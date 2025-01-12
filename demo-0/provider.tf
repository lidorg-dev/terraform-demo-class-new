provider "aws" {
  region     = "us-east-1"
  access_key = 
  secret_key = 
}

resource "aws_instance" "example" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t3.micro"
}