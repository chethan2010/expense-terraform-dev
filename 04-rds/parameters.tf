resource "aws_ssm_parameter" "db_password" {
  name  = "/expense/dev/db_password"
  type  = "SecureString"
  value = "ExpenseApp1"
}