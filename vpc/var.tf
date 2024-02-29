variable "vpc_cidr_number" {
  type = list(string)
  default = ["10.0.0.0/16"]
  description = "cidr number for 'aws_vpc' resource block"
}
variable "vpc_tag_name" {
  type = list(string)
  default = ["ninja-vpc-01"]
  description = "vpc tag name"
}