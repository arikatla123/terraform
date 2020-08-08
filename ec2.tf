
resource "aws_instance" "mysample" {
  ami           = "ami-066df92ac6f03efca"
  instance_type = "t2.micro"

  tags = {
    Name = "Subba-terraform"
  }

}
