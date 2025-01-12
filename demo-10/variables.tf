variable "instances" {
  type = map(object({
    ami           = string
    instance_type = string
  }))
  default = {
    example-instance-1 = {
      ami           = "ami-0e2c8caa4b6378d8c"
      instance_type = "t2.micro"
    }
    example-instance-2 = {
      ami           = "ami-09ec59ede75ed2db7"
      instance_type = "t2.xlarge"
    }
  }
}
