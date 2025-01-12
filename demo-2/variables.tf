variable "region" {
  default = "us-east-1"
}

variable "access_key" {
  default = 

}

variable "secret_key" {
  default = 

}


variable "AMIS" {
  description = "choose you ami depends on region"
  type        = map(string)
  default = {
    "us-east-1"    = "ami-0e2c8caa4b6378d8c"
    "eu-central-1" = "ami-0265dc4673f9d6a35"
    "il-central-1" = "ami-0c2d38f3940e9644f"
    "eu-west-1"    = "ami-099a01890c6d124b9"
  }

}


variable "PATH_TO_PRIVATE_KEY" {
  description = "path to private key in your pc "
  default     = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  description = "path to public key in your pc"
  default     = "mykey.pub"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}