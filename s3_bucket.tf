resource "aws_s3_bucket" "demo-bucket" {
  bucket = "awsglobal-bucket"
  tags = {
    Name  = "My-bucket"
  }
  lifecycle {
    ignore_changes = [ 
      versioning , # ignore the changes in versoning
      acl , # ignore the changes in access control list
     ]
  }
}