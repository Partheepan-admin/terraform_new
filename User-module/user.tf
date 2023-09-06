resource "aws_iam_user" "demo-iam-user" {
  name = var.user_name
}

resource "aws_iam_policy_attachment" "demo-attachment" {
  name = "AWS-policy-attachment"
  policy_arn = aws_iam_policy.demo-policy.arn
  users = [aws_iam_user.demo-iam-user.name]
  roles = aws_iam_role.demo-iam-role.name
}


