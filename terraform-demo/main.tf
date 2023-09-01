data "aws_vpc" "demo-vpc" {
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "demo-subnet" {
  vpc_id = data.aws_vpc.demo-vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "my-subnet"
  }
}