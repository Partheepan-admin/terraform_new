terraform {
  backend "s3" {
    bucket         = "awsglobal-bucket"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
   ### versioning {
    ####  enabled = true
  ####  }
  }
}