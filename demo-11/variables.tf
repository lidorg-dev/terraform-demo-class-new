variable "vpcs" {
  type = map(object({
    cidr_block = string
  }))
  default = {
    example-vpc-1 = {
      cidr_block = "10.0.0.0/16"

    }
    example-vpc-2 = {
      cidr_block = "192.168.0.0/16"

    }
  }
}