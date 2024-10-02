# RDS Instance
resource "aws_db_instance" "carshub-db" {
  allocated_storage    = 20
  db_name              = var.db_name
  engine               = "mysql"
  engine_version       = "8.0"
  publicly_accessible  = true
  instance_class       = "db.t3.micro"
  username             = tostring(data.vault_generic_secret.rds.data["username"])
  password             = tostring(data.vault_generic_secret.rds.data["password"])
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}
