resource "aws_eip" "myeip" {
  instance = "${aws_instance.MyFirstEc2instance_from_terraform.id}"
  vpc      = true
tags = {
    Name = "custmyeip"
  }
}

