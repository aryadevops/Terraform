resource "aws_instance" "demo_instance"{
    ami = var.name_ami
    instance_type = var.name_type
    security_groups = [aws_security_group.allow_all_1.name]

    tags = var.name_tags

}