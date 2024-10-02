output "public_security_group_id" {
  value = aws_security_group.easy-public-sg.id
}

output "private_security_group_id" {
  value = aws_security_group.easy-private-sg.id
}

output "public_ib1" {
  value = aws_vpc_security_group_ingress_rule.easy-public-ib1.id
}