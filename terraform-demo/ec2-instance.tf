resource "aws_instance" "demo-lifecycle" {
  ami =  var.instance_ami
  instance_type = var.instance_type
  key_name = "demo-terraform"
  tags = {
    Name = var.instance_name
  }
  
   connection {
     type = "ssh"
     user = "ec2-user"
     host = self.public_ip
     private_key = file("demo-terraform.pem")
   }
   provisioner "remote-exec" {
    inline = [
      "sudo yum install git -y"
    ]
   }
}




