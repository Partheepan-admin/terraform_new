resource "aws_s3_bucket" "example" {
  bucket = "terraform-bucket"
  tags = {
    Name  = "My-bucket"
  }
}