resource "aws_s3_bucket" "example" {
  bucket = "terra-bucket"
  tags = {
    Name  = "My-bucket"
  }
}