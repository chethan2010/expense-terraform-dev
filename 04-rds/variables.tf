variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "zone_name" {
  default = " mysql -h expense-dev.ccr84yssyn4p.us-east-1.rds.amazonaws.com -u root -pExpenseApp1
mysql: [Warning] Using a password on the command line interface can be insecure.
ERROR 1045 (28000): Access denied for user 'root'@'10.0.1.230' (using password: YES)
"
}