resource "aws_vpc" "demo-vpc" {
    cidr_block                       = "10.0.0.0/16"   
    instance_tenancy                 = "default"
    enable_dns_hostnames             = true
    assign_generated_ipv6_cidr_block = false
    tags  = {
        Name  = "test-vpc"
    }
}

resource "aws_internet_gateway" "demo-internet-gateway" {
vpc_id    =  aws_vpc.vpc.id
tags = {
    Name = "test-ig"
  } 
}
resource "aws_security_group" "demo-security" {
    vpc_id = aws_vpc.demo-vpc.id
  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}