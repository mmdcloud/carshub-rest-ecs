# ECS Cluster
resource "aws_ecs_cluster" "nodeapp-cluster" {
  name = "nodeapp-cluster"
  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

# ECR-ECS IAM Role
resource "aws_iam_role" "ecs-task-execution-role" {
  name               = "ecs-task-execution-role"
  assume_role_policy = <<EOF
    {
    "Version": "2012-10-17",
    "Statement": [
        {
        "Effect": "Allow",
        "Principal": {
            "Service": "ecs-tasks.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
        }
    ]
    }
    EOF
}

# ECR-ECS policy attachment 
resource "aws_iam_role_policy_attachment" "ecs-task-execution-role-policy-attachment" {
  role       = aws_iam_role.ecs-task-execution-role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

# ECS Task Definition
resource "aws_ecs_task_definition" "nodeapp-task-definition" {
  family                   = "nodeapp-task-definition"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 1024
  memory                   = 2048
  execution_role_arn       = aws_iam_role.ecs-task-execution-role.arn
  task_role_arn            = aws_iam_role.ecs-task-execution-role.arn
  network_mode             = "awsvpc"
  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
  container_definitions = jsonencode(
    [
      {
        "name" : "nodeapp",
        "image" : "${aws_ecr_repository.nodeapp.repository_url}:latest",
        "cpu" : 1024,
        "memory" : 2048,
        "essential" : true,
        "portMappings" : [
          {
            "containerPort" : 80,
            "hostPort" : 80,
            "name" : "nodeapp-http-80",
            "appProtocol" : "http",
            "protocol" : "tcp"
          }
        ]
      }
  ])
  # container_definitions = jsonencode([
  #   {
  #     name      = "nodeapp"
  #     image     = "${aws_ecr_repository.nodeapp.repository_url}:latest"
  #     cpu       = 256
  #     memory    = 512
  #     essential = true
  #     portMappings = [
  #       {
  #         containerPort = 80
  #         hostPort      = 80
  #         protocol      = "tcp"
  #       }
  #     ]
  #   }
  # ])
  tags_all = {
    Name = "nodeapp-task-definition"
  }
}

# ECS Service
resource "aws_ecs_service" "nodeapp-service" {
  name                 = "nodeapp-service"
  cluster              = aws_ecs_cluster.nodeapp-cluster.id
  task_definition      = aws_ecs_task_definition.nodeapp-task-definition.arn
  launch_type          = "FARGATE"
  scheduling_strategy  = "REPLICA"
  desired_count        = 1
  force_new_deployment = true
  network_configuration {
    security_groups  = [aws_security_group.security_group.id]
    subnets          = aws_subnet.public_subnets[*].id
    assign_public_ip = true
  }
  deployment_controller {
    type = "ECS"
  }
  load_balancer {
    container_name   = "nodeapp"
    container_port   = 80
    target_group_arn = aws_lb_target_group.lb_target_group.arn
  }
}