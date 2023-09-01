resource "aws_iam_policy" "demo_policy" {
  name        = "terraform-ec2-policy"
  description = "An example IAM policy for EC2 instance"

  # Define the permissions using the policy document
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "ec2:DescribeInstances",
          "ec2:DescribeInstanceStatus",
          "ec2:StartInstances",
          "ec2:StopInstances",
        ],
        Effect   = "Allow",
        Resource = "*",
      },
    ],
  })
}

resource "aws_iam_role" "demo_role" {
  name = "terraform-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com",
        },
      },
    ],
  })
}

resource "aws_iam_policy_attachment" "demo_attachment" {
  name       = "terraform-ec2-attachment"
  policy_arn = aws_iam_policy.demo_policy.arn
  roles      = [aws_iam_role.demo_role.name]
}


#resource "aws_instance" "Iam-instance" {
  #ami           = "ami-06f621d90fa29f6d0"
  #instance_type = "t2.micro"
 # iam_instance_profile = aws_iam_role.demo_role.name
  #
 # tags = {
  #  Name = "Iam-user"
 # }
#}