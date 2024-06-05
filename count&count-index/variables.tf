variable "name_ami" {
  
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "name_instance" {
    type = list
    default = [ "Mongodb","Mysql","Rabbitmq","User","Cart","Catalogue","Shiiping",
    "Payments","Redis","Web"
    ]
}

variable "zone_id" {
  default = "Z0785096FGYSOI4KHBHI"
  
}