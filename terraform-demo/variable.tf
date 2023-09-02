variable "instance_ami" {
    type = string
    default = "ami-06f621d90fa29f6d0"

}

variable "instance_type" {
   type = map(string)
   default = {
    "web-server" = "t2.micro"
    "app-server" = "t2.medium"
    "db-server" = "t2.small"
   }  
}

