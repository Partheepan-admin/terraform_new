output "instance_public_ip" {
    description = "fetch the public ip"
    value = aws_instance.demo-instance.public_ip  
}

output "instance_id" {
  default = "instance ID"
  value = aws_instance.demo-instance.id
}