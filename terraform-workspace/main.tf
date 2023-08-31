resource "aws_instance" "demo-workspace" {
   ami = var.instance_ami
   instance_type = var.instance_type
   count = 3
   key_name = "testkey"
   tags = {
      Name = "$(var.instance_name)-$(count.index)"  
      }
} 