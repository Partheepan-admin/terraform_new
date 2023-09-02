output "user_arn" {
    description = "ARN of the created Iam user."
    value = aws_iam_user.demo-user.arn
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.module-insta.public_ip
}

output "instance_id" {
  description = "Instance ID of the EC2 instance"
  value       = aws_instance.module-insta.id
}