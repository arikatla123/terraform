resource "aws_instance" "example" {
  ami           = "ami-021bb9f371690f97a"
  instance_type = "t2.micro"
   tags = {
    Name = "terraform instance"
  }
}
