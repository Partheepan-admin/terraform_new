output "instance_public_ip" {
    description = "fetch the public ip"
    value = aws_instance.demo-instance.public_ip  
}

output "instance_id" {
  description = "instance id details"
  value = aws_instance.demo-instance.id
}