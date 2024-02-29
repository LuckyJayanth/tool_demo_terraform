output "sub_pub_id" {
    description = "value"
  value = aws_subnet.pub_sub[*].id
}

output "sub_priv_id" {
    description = "value"
  value = aws_subnet.priv_sub[*].id
}