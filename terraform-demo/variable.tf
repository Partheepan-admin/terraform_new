variable "instance_name" {
  type = string
  default = "insta-provisioner"
}

variable "instance_ami" {
    type = string
    default = "ami-06f621d90fa29f6d0"

}

variable "instance_type" {
   type = string
   default = "t2.micro"  
}