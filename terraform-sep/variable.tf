variable "instance_ami" {
  type = string
  default = "ami-05552d2dcf89c9b24"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = string
  default = "Trial-instance"
}