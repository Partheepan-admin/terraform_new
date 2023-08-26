resource "aws_s3_bucket" "demo-bucket" {
  bucket = "awsglobal-bucket"
  tags = {
    Name  = "My-bucket"
  }
}