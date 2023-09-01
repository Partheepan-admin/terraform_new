resource "aws_instance" "demo-workspace" {
   ami = var.instance_ami
   instance_type = var.instance_type
   key_name = "testkey"
   tags = {
      Name = var.instance_name  
      }
      
   lifecycle {
     prevent_destroy = "true"
   }
}

