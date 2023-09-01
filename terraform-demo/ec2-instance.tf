resource "aws_instance" "demo-lifecycle" {
  ami =  "ami-06f621d90fa29f6d0"
  instance_type = "t2.micro"
  
  lifecycle {
    ignore_changes = [ 
      tags , # Ignore changes to tags
      instance_type , # Ignore changes to the instance type 
     ]
  }
}
