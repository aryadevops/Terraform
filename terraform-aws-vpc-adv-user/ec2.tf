module "ec2_instances" {

    source = "terraform-aws-modules/ec2-instance/aws"
    for_each = var.instances
    ami = data.aws_ami.devops_ami.id
    instance_type = each.value
    vpc_security_group_ids = [local.allow_all_sg_ids]
    subnet_id = each.key == "Web" ? local.public_subnet_ids[0] : local.private_subnet_ids[0]

    tags = merge(
        {
            Name = each.key
        },
        var.common_tags
    )
  
}