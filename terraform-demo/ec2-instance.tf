resource "aws_instance" "demo-lifecycle" {
  ami =  var.instance_ami
  instance_type = var.instance_type
  key_name = "demo-terraform"
  tags = {
    Name = var.instance_name
  }
  
  provisioner "local-exec" {
    command = "echo ${var.instance_name} is created succesfully"
  }
}
