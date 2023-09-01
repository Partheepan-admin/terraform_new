resource "aws_instance" "demo-lifecycle" {
  ami =  "ami-06f621d90fa29f6d0"
  instance_type = "t2.micro"
  tags = {
    Name = "lifecycle-insta"
  }
  lifecycle {
    create_before_destroy = true
  }
}
