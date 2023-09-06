resource "aws_instance" "demo-instance" {
  ami = var.instance_ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.demo-subnet.id
  vpc_security_group_ids = [aws_security_group.demo-sg.id]
  iam_instance_profile = aws_iam_instance_profile.demo-profile.name
}

resource "aws_iam_instance_profile" "demo-profile" {
  name = "Module-instance-profile"
  roles = aws_iam_role.demo-iam-role.name
}
