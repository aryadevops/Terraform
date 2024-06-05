variable "ami_id" {
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instances" {
    type = map
    default = {
        MongoDB = "t3.medium"
        MySQL = "t3.medium"
        Redis = "t2.micro"
        RabbitMQ = "t2.micro"
        Catalogue = "t2.micro"
        User = "t2.micro"
        Cart = "t2.micro"
        Shipping = "t2.micro"
        Payment = "t2.micro"
        Web = "t2.micro"
    }
}

variable "sg_name" {
    type = string
    default = "allow_all_traffic"
  
}

variable "sg_cidr" {
    default = ["0.0.0.0/0"]
  
}

variable "zone_id" {
  
  default = "Z0785096FGYSOI4KHBHI"
}

variable "domain" {
    default = "aryadevops.online"
  
}