output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.demo-foreach.public_ip
}

output "instance_id" {
  description = "Instance ID of the EC2 instance"
  value       = aws_instance.demo-foreach.id
}