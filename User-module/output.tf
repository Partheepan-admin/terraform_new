output "user_arn" {
    description = "ARN of the created Iam user."
    value = aws_iam_user.demo-user.arn
}

output "instance_id" {
  description = "Id of the ec2 instance"
  value = aws_instance.module-insta.id
}

output "instacne_puplic_ip" {
  description = "Public ip of the created Instance"
  value = aws_instance.module-insta.public_ip
}

