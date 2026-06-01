module "db" {
  source = "terraform-aws-modules/rds/aws"

  identifier = "${var.project_name}-${var.environment}"

  engine            = "mysql"
  engine_version    = "8.4"
  instance_class    = "db.t3.micro"
  allocated_storage = 5

  db_name          = "transactions"
  username         = "root"
 manage_master_user_password = false
  skip_final_snapshot = true
  port             = 3306

  vpc_security_group_ids = [
    data.aws_ssm_parameter.db_sg_id.value
  ]

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  create_db_subnet_group = false
  db_subnet_group_name   = data.aws_ssm_parameter.db_subnet_group_name.value

  family               = "mysql8.4"
  major_engine_version = "8.4"

  deletion_protection = false
}