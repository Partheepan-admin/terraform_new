resource "aws_vpc" "demo-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "demo-subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.demo-vpc.id
}

resource "aws_instance" "demo-instance" {
  ami = "ami-06f621d90fa29f6d0"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.demo-subnet.id
  tags = {
    Name = "my-instance"
  }
}