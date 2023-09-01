resource "aws_instance" "Iam-instance" {
  ami           = "ami-06f621d90fa29f6d0"
  instance_type = "t2.micro"
  iam_instance_profile = aws_iam_role.terraform-ec2-role.name
  
  tags = {
    Name = "Iam-user"
  }
}
