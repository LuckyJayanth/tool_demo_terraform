variable "ami" {
  type = list(string)
  default = ["ami-03f4878755434977f"]
  description = "ami for 'bastion/public' block"
}

variable "type" {
  default = ["t3.micro"]
  type = list(string)
  description = "Instance Types"
}

variable "pub_ec2_tags" {
  type = list(string)
  default = ["Server Public"]
}

variable "priv_ec2_tags" {
  type = list(string)
  default = ["Server Private"]
}

variable "pub_sub_id" {
   type = list(string)
   default = ["xyz"]
}

variable "priv_sub_id" {
   type = list(string)
   default = ["abc"]
}

variable "key_pair_from_instance" {
  type = string
  description = "This block is for key pair"
  default = ""
}

variable "sec_grp_name" {
  type = string
  description = "This block is for sec_grp"
  default = "sdf"
}