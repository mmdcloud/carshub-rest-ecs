# ECR 
resource "aws_ecr_repository" "nodeapp" {
  name                 = "nodeapp"
  image_tag_mutability = "MUTABLE"
  force_delete         = true
  image_scanning_configuration {
    scan_on_push = false
  }
}

# Bash script to build the docker image and push it to ECR
resource "null_resource" "push_to_ecr" {
  provisioner "local-exec" {
    command = "bash ${path.cwd}/../../backend/api/ecr_build_push.sh ${aws_ecr_repository.nodeapp.name} ${var.region}"
  }
}
