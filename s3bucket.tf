resource "aws_s3_bucket" "example" {
  bucket = "subba-test-s3-terraform-bucket"
  acl = "private"
  versioning {
    enabled = true
  }

  tags {
    Name = "my-test-s3-terraform-bucket"
  }
}
