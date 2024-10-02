#security group ids
output "public_security_group_id" {
  value = aws_security_group.easy-public-sg.id
}

output "private_security_group_id" {
  value = aws_security_group.easy-private-sg.id
}

#security group rules
output "public_ib1" {
  value = aws_vpc_security_group_ingress_rule.easy-public-ib1.id
}
output "public_ib2" {
  value = aws_vpc_security_group_ingress_rule.easy-public-ib2.id
}
output "public_ib3" {
  value = aws_vpc_security_group_ingress_rule.easy-public-ib3.id
}
output "public_ob" {
  value = aws_vpc_security_group_ingress_rule.easy-public-ob.id
}

output "private_ib" {
  value = aws_vpc_security_group_ingress_rule.easy-private-ib.id
}
output "private_ob" {
    value = aws_vpc_security_group_ingress_rule.easy-private-ob.id
}

#security group names
output "public_security_group_name" {
  value = aws_security_group.easy-public-sg.name
}
output "private_security_group_name" {
  value = aws_security_group.easy-private-sg.name
}
