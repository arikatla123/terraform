resource "aws_eip" "lb" {
  instance = "${aws_instance.example.id}"
  vpc      = true
tags = {
    Name = "custmyeip"
  }
}
