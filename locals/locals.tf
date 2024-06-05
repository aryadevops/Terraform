locals {
  ami_id = "ami-0f3c7d07486cad139"
  key_public = file("${path.module}/devops.pub")
  instance_type = var.isPROD ? "t3.medium" : "t2.micro" 
}