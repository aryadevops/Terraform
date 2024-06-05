resource "aws_security_group" "allow_all_1" {

    name = var.sg_name
    description = "creating allowing all security group"


        ingress {
        protocol  = "tcp"
        cidr_blocks = var.name_cidr
        from_port = 0
        to_port   = 0
    }

        egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = var.name_cidr
    }
    

}