# data "aws_ssm_parameter" "db_password" {
#   name            = "/expense/dev/db_password"
#   with_decryption = true
# }

data "aws_ssm_parameter" "db_sg_id" {
  name = "/${var.project_name}/${var.environment}/db_sg_id"
}

data "aws_ssm_parameter" "db_subnet_group_name" {
  name = "/${var.project_name}/${var.environment}/db_subnet_group_name"
}