resource "aws_instance" "demo_instance" {
   ami = "ami-06f621d90fa29f6d0"
   instance_type = "t2.micro"
   key_name = "testkey"
   tags = {
      Name = "terra-test"  
      }
}  