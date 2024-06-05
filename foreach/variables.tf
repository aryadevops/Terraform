variable "name_ami" {
  
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instances" {
    type = map
    default = {
    MongoDB = "t2.medium"
    MySQL = "t2.medium"
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

variable "zone_id" {
    type = string
    default = "Z0785096FGYSOI4KHBHI"
  
}

variable "domain" {
    default = "aryadevops.online"
  
}