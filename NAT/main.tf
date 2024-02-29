resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = var.elasticip
  subnet_id     = var.pub_sub_id

  tags = {
    Name = var.nat_gateway_tag_name
  }
}