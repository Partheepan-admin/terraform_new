resource "aws_instance" "demo_instance" {
   ami = "ami-0da59f1af71ea4ad2"
   instance_type = "t2.micro"
   key_name = "testkey"
   tags = {
      Name = "terra-test"  
      }
}  