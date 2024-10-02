#public subnet security group
resource "aws_security_group" "easy-public-sg" {
  name = "easy-public-sg"
  description = "public-subnets' security group using HTTP, HTTPS, SSH"
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "easy-sg"
  }
}

#Public Security group rules for public subnets
resource "aws_vpc_security_group_ingress_rule" "easy-public-ib1" {
  description = "HTTP"
  security_group_id = aws_security_group.easy-public-sg.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = 80
  to_port = 80
}

resource "aws_vpc_security_group_ingress_rule" "easy-public-ib2" {
  description = "HTTPS"
  security_group_id = aws_security_group.easy-public-sg.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = 443
  to_port = 443
}

resource "aws_vpc_security_group_ingress_rule" "easy-public-ib3" {
  description = "SSH"
  security_group_id = aws_security_group.easy-public-sg.id
  cidr_ipv4 = module.vpc.vpc_cidr_block
  ip_protocol = "tcp"
  from_port = 22
  to_port = 22
}

resource "aws_vpc_security_group_egress_rule" "easy-public-ob" {
  description = "all outbound rules"
  security_group_id = aws_security_group.easy-public-sg.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}

#private subnet security group
resource "aws_security_group" "easy-private-sg" {
  name = "easy-private-sg"
  description = "private-subnets' security group using HTTP, HTTPS, SSH"
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "easy-private-sg"
  }
}

#Private Security group rules for private subnets for Internal VPC Traffic (All Ports)
resource "aws_vpc_security_group_ingress_rule" "easy-private-ib1" {
  description = "All TCP"
  security_group_id = aws_security_group.easy-private-sg.id
  cidr_ipv4 = "192.168.0.0/16"
  ip_protocol = "tcp"
  from_port = 0
  to_port = 65535
}

resource "aws_vpc_security_group_egress_rule" "easy-private-ob" {
  description = "all outbound rules"
  security_group_id = aws_security_group.easy-private-sg.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}