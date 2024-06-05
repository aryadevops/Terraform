resource "aws_instance" "condition" {
   count = 10
    ami = var.name_ami
    instance_type = var.name_instance[count.index] == "Mongodb" || var.name_instance[count.index] == "Mysql" ? "t3.medium" : "t2.micro"

    tags = {
      Name = var.name_instance[count.index]
    }
  
}
  resource "aws_route53_record" "record" {
    count = 10
  zone_id = var.zone_id
  name    = "${var.name_instance[count.index]}.aryadevops.online"
  type    = "A"
  ttl     = 1
  records = [aws_instance.condition[count.index].private_ip]
}
