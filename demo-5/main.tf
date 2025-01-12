provider "aws" {
  region = "us-east-1"

}

module "module-1" {
  source        = "./tf-modules/module-1"
  INSTANCE_NAME = "lidor-test"
  Project       = "QA"
}

output "eip" {
  value = module.module-1.ip

}