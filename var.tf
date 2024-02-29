################### [ Region variable ] #####################

variable "region_name" {
  type = string
  description = "Region to execute"
}

################### [ Region availability zones variables ] #####################

variable "az_in_region" {
  type = list(string)
  description = "az in this region"
}

################### [ VPC variables ] #####################

variable "vpc_cidr_num" {
  type = list(string)
  description = "cidr number for vpc resource block"
}

variable "vpc_name" {
  type = list(string)
  description = "vpc tag name"
}

################### [ Public Subnet variables ] #####################

variable "pub_sub_cidr" {
  type = list(string)
  description = "cidr number for 'pub_sub' block"
}

variable "pub_sub_tags" {
  type = list(string)
  description = "Public Subnet tags for 'pub_sub' block"
}

variable "pub_sub_index" {
  type = number
}

################### [ Private Subnet variables ] #####################

variable "priv_sub_cidr" {
  type = list(string)
  description = "cidr number for 'priv_sub' block"
}

variable "priv_sub_tags" {
  type = list(string)
  description = "Private Subnet tags for 'priv_sub' block"
}

variable "priv_sub_index" {
  type = number
}

################### [ Route Table variables ] #####################

variable "route_tab_cidr" {
  type = string
  description = "cidr number for 'pub_route_table' block"
}

variable "public_route_tags" {
  type = string
}

variable "private_route_tags" {
  type = string
}

variable "sub_pub_numb" {
  type = list(string)
}

variable "sub_priv_numb" {
  type = list(string)
}

################### [ NAT variables ] #####################

variable "nat_gateway_tags" {
  type = string
  description = "NAT gateway tag name"
}

################### [ IGW variables ] #####################

variable "igw_tags" {
  type = string
  description = "vpc tag name"
}

################### [ Security groups variables ] #####################

variable "security_grp_name" {
  type = string
}

variable "ingress_from_port" {
  type = number
}

variable "egress_from_port" {
  type = number
}

variable "ingress_to_port" {
  type = number
}

variable "egress_to_port" {
  type = number
}

variable "ingress_protocol_value" {
  type = string
}

variable "egress_protocol_value" {
  type = string
}

variable "ingress_cidr_block_value" {
  type = string
}

variable "egress_cidr_block_value" {
  type = string
}

################### [ Instance variables ] #####################

variable "ec2_ami" {
  type = list(string)
  description = "ami for 'bastion/public' block"
}

variable "ec2_type" {
  type = list(string)
  description = "Instance Types"
}

variable "public_ec2_tags" {
  type = list(string)
}

variable "private_ec2_tags" {
  type = list(string)
}

################### [ Key variables ] #####################

variable "root_public_key" {
  type = string
  description = "This variable block is for public key"
}
variable "root_private_key" {
  type = string
  description = "This variable block is for private key"
}