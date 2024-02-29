output "vpc_id" {
  value = aws_vpc.vpc[*].id
  description = "vpc id"
}