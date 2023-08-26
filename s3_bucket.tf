resource "aws_s3_bucket" "example" {
  bucket = "terra_bucket"
  tags = {
    Name  = "My-bucket"
  }
}