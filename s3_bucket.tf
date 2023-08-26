resource "aws_s3_bucket" "example" {
  bucket = "demo-bucket"
  tags = {
    Name  = "My-bucket"
  }
}