resource "aws_iam_user" "demo-user" {
  name = var.user_name
}

resource "aws_instance" "module-insta" {
    ami = var.instance_ami
    instance_type = var.instance_type
    tags = {
      Name = var.instance_name
    }
}