resource "aws_security_group" "rds" {
  name_prefix = "osondoson-"

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.common_tags
}

resource "aws_db_subnet_group" "osondoson_subnet_group" {
  name       = "osondoson-rds"
  subnet_ids = data.terraform_remote_state.vpc.outputs.subnet_groups.public
  tags       = local.common_tags
}

resource "aws_db_instance" "osondoson_pg" {
  allocated_storage = var.db_allocated_storage
  engine            = var.engine
  engine_version    = var.engine_version
  instance_class    = var.db_instance_class

  identifier           = "osondoson"
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.osondoson_subnet_group.name

  publicly_accessible = true
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.rds.id]

  tags = local.common_tags
}