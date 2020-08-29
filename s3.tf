resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "terraform-s3-bucket-16-51-89"
  acl    = "public-read"

  tags = {
    Name        = "My bucket123"
    Environment = "Dev"
  }
}
