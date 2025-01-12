resource "aws_instance" "lidor-example" {
  count         = 1
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t3.micro"
}