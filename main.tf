provider "aws" {
  
}
resource "aws_s3_bucket" "kk" {
  bucket = "bjhdgyfhr"

  tags = {
    Name        = "bjhdgyfhr"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.kk.id
  acl    = "private"
}
