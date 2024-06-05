module "ec2" {
    source = "../Ec2-Module"
    ami_id =  var.ami_id
    instance_type = var.instance_type
  
}