resource "aws_instance" "terraform-demo" {
   ami = "ami-06f621d90fa29f6d0"
   count = 4
   instance_type = "t2.micro"
   key_name = "testkey"
   tags = {
      Name = "terra-test_${count.index}" 
      }
}  