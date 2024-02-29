variable "route_table_cidr" {
  type = string
  default = "0.0.0.0/0"
  description = "cidr number for 'pub_route_table' block"
}

variable "pub_route_tags" {
  type = string
  default = "ninja-route-pub"
}

variable "priv_route_tags" {
  type = string
  default = "ninja-route-priv"
}

variable "public_subnet_cidr_assign" {
  default = ["xyz"]
  type = list(string)
}

variable "association_public_subnet" {
  default = []
  type = list(string)
}

variable "private_subnet_cidr_assign" {
  default = ["xyz"]
  type = list(string)
}

variable "association_private_subnet" {
  default = []
  type = list(string)
}

variable "IGW_id" {
   type = string
   default = "xyz"
}

variable "NAT_id" {
   type = string
   default = "abc"
}

variable "vpcid" {
   type = string
   default = "pqr"
}