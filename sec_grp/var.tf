variable "sec_grp_name" {
  type = string
  default = "sec_grp_01"
}

variable "ingress_from_port_value" {
  type = number
  default = 0
}

variable "egress_from_port_value" {
  type = number
  default = 0
}

variable "ingress_to_port_value" {
  type = number
  default = 0
}

variable "egress_to_port_value" {
  type = number
  default = 0
}

variable "ingress_protocol" {
  type = string
  default = "-1"
}

variable "egress_protocol" {
  type = string
  default = "-1"
}

variable "ingress_cidr_block" {
  type = string
  default = "0.0.0.0/0"
}

variable "egress_cidr_block" {
  type = string
  default = "0.0.0.0/0"
}

variable "vpcid" {
   type = string
   default = "xyz"
}