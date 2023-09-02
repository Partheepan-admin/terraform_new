resource "aws_instance" "demo-foreach" {
  ami =  var.instance_ami
  for_each = var.instance_type
  instance_type = each.value
  key_name = "demo-terraform"
   tags = {
    Name = each.key
  }
}