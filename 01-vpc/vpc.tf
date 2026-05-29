module "vpc" {
  #source = "../terraform-vpc"
  source = "git::https://github.com/chethan2010/terraform-vpc.git?ref=main"
  Project_name =var.Project_name
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  database_subnet_cidrs = var.data_subnet_cidrs
  common_tags = var.common_tags
  is_peering_required = var.is_peering_required
}