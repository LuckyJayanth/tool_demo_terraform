variable "public_subnet_cidr" {
  default = ["10.0.128.0/17", "10.0.64.0/18"]
  type = list(string)
  description = "cidr number for 'pub_sub' block"
}

variable "public_subnet_tags" {
  default = ["ninja-pub-sub-01", "ninja-pub-sub-02"]
  type = list(string)
  description = "Public Subnet tags for 'pub_sub' block"
}

variable "private_subnet_cidr" {
  default = ["10.0.16.0/20", "10.0.8.0/21"]
  type = list(string)
  description = "cidr number for 'priv_sub' block"
}

variable "private_subnet_tags" {
  default = ["ninja-priv-sub-01", "ninja-priv-sub-02"]
  type = list(string)
  description = "Private Subnet tags for 'priv_sub' block"
}

variable "region_az" {
  type = list(string)
  default = ["ap-northeast-1a","ap-northeast-1c"]
  description = "Availability zones"
}

variable "vpcid" {
   type = string
   default = "xyz"
}
