provider "aws" {
  region     = "us-west-1"
  access_key = "AKIA4X4UVQ4FHENUSR2A"
  secret_key = "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"
}



resource "aws_instance" "mysample" {
  ami           = "ami-066df92ac6f03efca"
  instance_type = "t2.micro"

  tags = {
    Name = "Subba-terraform"
  }

}
