output "user_arn" {
    description = "ARN of the created Iam user."
    value = aws_iam_user.demo-user.arn
}

output "ec2_instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example_instance.public_ip
}

output "ec2_instance_id" {
  description = "Instance ID of the EC2 instance"
  value       = aws_instance.example_instance.id
}