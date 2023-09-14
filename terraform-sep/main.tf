resource "aws_instance" "demo-instance" {
  ami = var.instance_ami
  instance_type = var.instance_type
  key_name = "testkey"

  tags = {
    Name = var.instance_name
  }
}