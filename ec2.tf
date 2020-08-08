provider "aws"{
    region="us-east-1"
}
resource "aws_instance" "myfirst-terrafrom" {
  ami           = "ami-021bb9f371690f97a"
  instance_type = "t2.micro"
   tags = {
    Name = "terraform-instance"
  }
}
