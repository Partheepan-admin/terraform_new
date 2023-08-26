resource "aws_instance" "demo_instance" {
   ami = "ami-0ded8326293d3201b"
   instance_type = "t2.micro"
   key_name = "testkey"
   tags = {
      Name = "terra-test"  
      }
}  