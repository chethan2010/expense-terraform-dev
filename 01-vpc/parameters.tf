resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.Project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
  overwrite = true
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.Project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.public_subnets_ids)
  overwrite = true
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.Project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.private_subnets_ids)
  overwrite = true
}


resource "aws_ssm_parameter" "db_subnet_group_name" {
  name  = "/${var.Project_name}/${var.environment}/db_subnet_group_name"
  type  = "String"
  value = module.vpc.database_subnet_group_name
  overwrite = true
}