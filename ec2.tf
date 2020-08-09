
resource "aws_instance" "example" {
  ami           = "ami-021bb9f371690f97a"
  instance_type = "t2.micro"

  tags = {
    Name = "terraforminstance"
  }

}

resource "aws_eip" "lb" {
  instance = "${aws_instance.example.id}"
  vpc      = true
tags = {
    Name = "custmyeip"
  }
}

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

resource "aws_s3_bucket_object" "file_upload" {
  bucket = "subba-test-s3-terraform-bucket"
  key    = "my_bucket_key"
  source = "terraform.tfstate"

}
