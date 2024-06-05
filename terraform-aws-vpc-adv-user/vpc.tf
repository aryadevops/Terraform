module "vpc" {
    source = "../terraform-aws-vpc-advanced_module"
    project_name = var.project_name
    env = var.env
    cidr_block = var.cidr_block
    common_tags = var.common_tags
    # vpc_tags = var.vpc_tags
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr
  
}