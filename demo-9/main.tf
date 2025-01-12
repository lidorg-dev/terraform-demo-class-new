resource "aws_vpc" "main" {
  count      = var.create ? 1 : 0
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.cluster_name}-vpc"
  }

}

resource "aws_internet_gateway" "gw" {
  count = try(var.create ? 1 : 0, 0) // try block is important here because it has a dependency, here the VPC, but VPC might not need a try block because it is the parent.

  vpc_id = aws_vpc.main[0].id

  tags = {
    Name = "${var.cluster_name}-IG"
  }
}

resource "aws_instance" "name" {
  count         = max(var.number1, var.number2, var.number3)
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"

}
