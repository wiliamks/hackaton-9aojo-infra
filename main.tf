resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = ["subnet-0ad7b507a983fa70d", "subnet-02351bb153ef77807"]

  tags = {
    Name = var.db_name
  }
}

resource "aws_db_instance" "default" {
  allocated_storage      = var.allocated_storage
  db_name                = var.db_name
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  username               = var.username
  password               = var.password
  port                   = var.port
  identifier             = var.identifier
  parameter_group_name   = var.parameter_group_name
  skip_final_snapshot    = var.skip_final_snapshot
  db_subnet_group_name   = aws_db_subnet_group.default.name
  publicly_accessible    = var.publicly_accessible
}