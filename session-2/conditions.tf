resource "aws_instance" "conditions" {
    ami = var.name_ami
    instance_type = var.name_instance == "mongodb" ? "t3.medium" : "t2.micro"
  
}