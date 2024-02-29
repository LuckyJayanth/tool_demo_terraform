################### [ Public Instance ] #####################

resource "aws_instance" "public_instance" {
  count = length(var.ami)
  ami           = var.ami[count.index]
  instance_type = var.type[count.index]
  security_groups = [ var.sec_grp_name ]
  subnet_id = var.pub_sub_id[count.index]
  key_name = var.key_pair_from_instance
  associate_public_ip_address = "true"
  tags = {
    count = length(var.pub_ec2_tags)
    Name = var.pub_ec2_tags[count.index]
  }
}

################### [ Private Instance ] #####################

resource "aws_instance" "private_instance" {
  count = length(var.ami)
  ami           = var.ami[count.index]
  instance_type = var.type[count.index]
  security_groups = [ var.sec_grp_name ]
  subnet_id = var.priv_sub_id[count.index]
  key_name = var.key_pair_from_instance
  associate_public_ip_address = "false"
  tags = {
    count = length(var.priv_ec2_tags)
    Name = var.priv_ec2_tags[count.index]
  }
}