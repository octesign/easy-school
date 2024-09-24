resource "aws_route_table_association" "easy-rta-public-1" {
  subnet_id = module.subnets.easy_public_subnet_1_id
  route_table_id = module.route_table.easy_routes_public_id
}

resource "aws_route_table_association" "easy-rta-private-1" {
  subnet_id = module.subnets.easy_private_subnet_1_id
  route_table_id = module.route_table.easy_routes_private_1_id
}

resource "aws_route_table_association" "easy-rta-public-2" {
  subnet_id = module.subnets.easy_public_subnet_2_id
  route_table_id = module.route_table.easy_routes_public_id
}

resource "aws_route_table_association" "easy-rta-private-2" {
  subnet_id = module.subnets.easy_private_subnet_2_id
  route_table_id = module.route_table.easy_routes_private_2_id
}