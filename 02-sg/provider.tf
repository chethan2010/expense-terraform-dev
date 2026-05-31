terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.45.0"
    }
  }
 backend "s3" {
    bucket         = "dev-daw9-hemanth-2026"
    key            = "exp-dev-sg/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "daws83s"
  }
}
provider "aws" {
 region="us-east-1"
}