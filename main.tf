################### [ VPC module ] #####################

module "creating_VPC" {
  source = "./vpc"
  vpc_cidr_number = var.vpc_cidr_num
  vpc_tag_name = var.vpc_name
}

################### [ Subnet module ] #####################

module "creating_subnet" {
  source = "./subnet"
  public_subnet_cidr = var.pub_sub_cidr
  public_subnet_tags = var.pub_sub_tags
  private_subnet_cidr = var.priv_sub_cidr
  private_subnet_tags = var.priv_sub_tags
  region_az = var.az_in_region
  vpcid = module.creating_VPC.vpc_id[0]
}

################### [ IGW module ] #####################

module "creating_IGW" {
  source = "./IGW"
  igw_tag_name = var.igw_tags
  vpcid = module.creating_VPC.vpc_id[0]
}

################### [ Elastic_ip module ] #####################

module "creating_eip" {
  source = "./elastic_ip"
}

################### [ NAT module ] #####################

module "creating_NAT" {
  source = "./NAT"
  nat_gateway_tag_name = var.nat_gateway_tags
  elasticip = module.creating_eip.eip
  pub_sub_id = module.creating_subnet.sub_pub_id[0]
}

################### [ Route table module ] #####################

module "creating_route_tables" {
  source = "./route_tab"
  route_table_cidr = var.route_tab_cidr
  pub_route_tags = var.public_route_tags
  priv_route_tags = var.private_route_tags
  vpcid = module.creating_VPC.vpc_id[0]
  IGW_id = module.creating_IGW.id_IGW
  NAT_id = module.creating_NAT.id_NAT
  public_subnet_cidr_assign = module.creating_subnet.sub_pub_id
  association_public_subnet = [for num in var.sub_pub_numb : module.creating_subnet.sub_pub_id[num]]
  private_subnet_cidr_assign = module.creating_subnet.sub_priv_id
  association_private_subnet = [for num in var.sub_priv_numb : module.creating_subnet.sub_priv_id[num]]
}

################### [ Security group module ] #####################

module "creating_security_group" {
  source = "./sec_grp"
  sec_grp_name = var.security_grp_name
  ingress_from_port_value = var.ingress_from_port
  ingress_to_port_value = var.ingress_to_port
  ingress_protocol = var.ingress_protocol_value
  ingress_cidr_block = var.ingress_cidr_block_value
  egress_from_port_value = var.egress_from_port
  egress_to_port_value = var.egress_to_port
  egress_protocol = var.egress_protocol_value
  egress_cidr_block = var.egress_cidr_block_value
  vpcid = module.creating_VPC.vpc_id[0]
}

################### [ Key pair module ] #####################

module "key_pair" {
  source = "./key"
  public_key_pair = var.root_public_key
  private_key_pair = var.root_private_key
}

################### [ Instance module ] #####################

module "creating_Instance" {
  source = "./Instance"
  ami = var.ec2_ami
  type = var.ec2_type
  pub_ec2_tags = var.public_ec2_tags
  priv_ec2_tags = var.private_ec2_tags
  key_pair_from_instance = module.key_pair.public_key_file_output
  pub_sub_id = module.creating_subnet.sub_pub_id
  priv_sub_id = module.creating_subnet.sub_priv_id
  sec_grp_name = module.creating_security_group.sg_id
}