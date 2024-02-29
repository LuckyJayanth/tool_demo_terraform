variable "nat_gateway_tag_name" {
  type = string
  default = "ninja-nat-01"
  description = "NAT gateway tag name"
}

variable "elasticip" {
   type = string
   default = "xyz"
}

variable "pub_sub_id" {
   type = string
   default = "xyz"
}