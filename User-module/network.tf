resource "aws_vpc" "demo-vpc" {    
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    tags = {
      Name = "Module-VPC"
    }
}

resource "aws_internet_gateway" "demo-internet-gateway" {
  vpc_id = aws_vpc.demo-vpc.id
  tags = {
    Name = "Module-IG"
  }
}

resource "aws_subnet" "demo-subnet" {
  vpc_id = aws_vpc.demo-vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "Module-Subnet"
  }
}

resource "aws_security_group" "demo-sg" {
  name        = "Module-SG"
  vpc_id = aws_vpc.demo-vpc.id
  description = "security group creation"

  # Inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # All traffic
    cidr_blocks = ["0.0.0.0/0"] 
  }
}