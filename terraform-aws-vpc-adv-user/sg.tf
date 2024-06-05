module "sg" {
    source = "../terraform-aws-securitygroup-mod"
    project_name = var.project_name
    env = var.env
    sg_description = var.sg_description
    sg_name = var.sg_name
    sg_ingress_rules = var.sg_ingress_rules
    vpc_id = local.vpc_id
    common_tags = var.common_tags

  
}