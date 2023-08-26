resource "aws_s3_bucket" "example" {
  bucket = "global-bucket"
  tags = {
    Name  = "My-bucket"
  }
}