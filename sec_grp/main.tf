resource "aws_security_group" "security_group" {
  vpc_id = var.vpcid
  name = var.sec_grp_name
  description = "security group I/O rules all traffic"
  ingress {
    from_port       = var.ingress_from_port_value
    to_port         = var.ingress_to_port_value
    protocol        = var.ingress_protocol
    cidr_blocks     = [var.ingress_cidr_block] 
  }
  egress {
    from_port       = var.egress_from_port_value
    to_port         = var.egress_to_port_value
    protocol        = var.egress_protocol
    cidr_blocks     = [var.egress_cidr_block]
  }
}