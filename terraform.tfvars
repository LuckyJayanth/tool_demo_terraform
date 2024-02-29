################### [ Region variable ] #####################

region_name = "ap-northeast-1"

################### [ Region availability zones variable ] #####################

az_in_region = ["ap-northeast-1a","ap-northeast-1c"]

################### [ VPC variables ] #####################

vpc_cidr_num = ["10.0.0.0/16"]

vpc_name = ["ninja-vpc-01"]

################### [ Public Subnet variables ] #####################

pub_sub_cidr = ["10.0.128.0/17", "10.0.64.0/18"]

pub_sub_tags = ["ninja-pub-sub-01", "ninja-pub-sub-02"]

pub_sub_index = 0

################### [ Private Subnet variables ] #####################

priv_sub_cidr = ["10.0.16.0/20", "10.0.8.0/21"]

priv_sub_tags = ["ninja-priv-sub-01", "ninja-priv-sub-02"]

priv_sub_index = 0

################### [ Route Table variables ] #####################

route_tab_cidr = "0.0.0.0/0"

public_route_tags = "ninja-route-pub"

private_route_tags = "ninja-route-priv"

sub_pub_numb = ["0","1"]

sub_priv_numb = ["0","1"]

################### [ NAT variables ] #####################

nat_gateway_tags = "ninja-nat-01"

################### [ IGW variables ] #####################

igw_tags = "ninja-igw-01"

################### [ Security groups variables ] #####################

security_grp_name = "sec_grp_01"

ingress_from_port = 0

egress_from_port = 0

ingress_to_port = 0

egress_to_port = 0

ingress_protocol_value = "-1"

egress_protocol_value = "-1"

ingress_cidr_block_value = "0.0.0.0/0"

egress_cidr_block_value = "0.0.0.0/0"

################### [ Instance variables ] #####################

ec2_ami = ["ami-07c589821f2b353aa"]

ec2_type = ["t3.micro"]

public_ec2_tags = ["Server Public"]

private_ec2_tags = ["Server Private"]

################### [ Key variables ] #####################

root_public_key = "key_for_nginx"

root_private_key = "nginx_private_key"