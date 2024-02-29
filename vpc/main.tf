resource "aws_vpc" "vpc" {
  count = length(var.vpc_cidr_number)
  cidr_block = var.vpc_cidr_number[count.index]
  tags = {
    count = length(var.vpc_tag_name)
    Name = var.vpc_tag_name[count.index]
  }
}