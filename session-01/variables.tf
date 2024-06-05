variable "name_ami" {
  
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "name_type" {

    type = string
    default = "t2.micro"
  
}

variable "sg_name" {
    default = "allow-all-1"
  
}

variable "name_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "name_tags" {
    type = map
    default = {
        Name = "Mongodb"
        Environment = "Dev"
        Terraform = "yes"
        Component = "Mongodb"
    }
}