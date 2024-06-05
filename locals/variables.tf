// variable "name_ami" {
  
//   type = string
//   default = "ami-0f3c7d07486cad139"
// }

// variable "name_instance" {
//     default = "cart"
  
// }
variable "instance_names" {
  type = list
  default = ["MongoDB", "Cart", "Catalogue", "User" , "Redis", "MySQL", "RabbitMQ", "Shipping", "Payment", "Web"]
}

variable "zone_id" {
  default = "Z0308214GYCUYHGJHT8R"
}

variable "domain" {
  default = "joindevops.online"
}

variable "isPROD" {
    default = true
}