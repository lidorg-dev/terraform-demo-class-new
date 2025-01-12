provider "aws" {
  region = "us-east-1"

}


module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.3.0"

  bucket = "lidor-new-s3-bucket"



}