terraform {
  backend "s3" {
    bucket         = "terraform-state-demo-new"
    key            = "aws/us-east-1/ec2/tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-demo"

  }
}



provider "aws" {
  region = var.region
}