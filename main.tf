# resource "aws_instance" "terraform-demo" {
#    ami = "ami-06f621d90fa29f6d0"
#    instance_type = "t2.micro"
#    key_name = "testkey"
#    tags = {
#       Name = "terra-test"
#       }
# }  


module "iam_user" {
  source = "./User-module"
}

