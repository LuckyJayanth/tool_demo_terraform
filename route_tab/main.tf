################### [ Public Route Table ] #####################

resource "aws_route_table" "pub_route_table" {
  vpc_id = var.vpcid
  route {
    cidr_block = var.route_table_cidr
    gateway_id = var.IGW_id
  }
  tags = {
    Name = var.pub_route_tags
  }
}

resource "aws_route_table_association" "route_association_to_public_subnet" {
  count = length(var.public_subnet_cidr_assign)
  subnet_id      = var.association_public_subnet[count.index]
  route_table_id = aws_route_table.pub_route_table.id
}

################### [ Private Route Table ] #####################

resource "aws_route_table" "priv_route_table" {
  vpc_id = var.vpcid
  route {
    cidr_block = var.route_table_cidr
    gateway_id = var.NAT_id
  }
  tags = {
    Name = var.priv_route_tags
  }
}

resource "aws_route_table_association" "route_association_to_private_subnet" {
  count = length(var.private_subnet_cidr_assign)
  subnet_id      = var.association_private_subnet[count.index]
  route_table_id = aws_route_table.priv_route_table.id
}