################### [ Public Subnet ] #####################

resource "aws_subnet" "pub_sub" {
  count = length(var.public_subnet_cidr)
  vpc_id     = var.vpcid
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone       = element(var.region_az, count.index % length(var.region_az))
  map_public_ip_on_launch = true
  tags = {
    Name = var.public_subnet_tags[count.index]
  }
}

################### [ Private Subnet ] #####################

resource "aws_subnet" "priv_sub" {
  count = length(var.private_subnet_cidr)
  vpc_id     = var.vpcid
  cidr_block = var.private_subnet_cidr[count.index]
  availability_zone       = element(var.region_az, count.index % length(var.region_az))
  map_public_ip_on_launch = false
  tags = {
    Name = var.private_subnet_tags[count.index]
  }
}