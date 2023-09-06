resource "aws_iam_policy" "demo-policy" {
  name = "AWS-Iam-Policy"
  description = "Create a Iam policy for EC2 instance with read only access"
  policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
            Action   = "ec2:Describe*",
            Effect   = "Allow",
            Resource = "*", 
        },
      ],
  })
}

resource "aws_iam_role" "demo-iam-role" {
  name = "Module-IAM-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}