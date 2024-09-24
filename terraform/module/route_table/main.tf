resource "aws_route_table" "easy-routes-public" {
  vpc_id = module.vpc.vpc_id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = module.igw.easy-school-igw.id 
  }

  tags = {
    Name = "easy-routes-public"
  }
}

resource "aws_route_table" "easy-routes-private-1" {
  vpc_id = module.vpc.vpc_id

  # route {
  #   cidr_block = var.easy_private_subnet_cidr_1
  # }

  tags = {
    Name = "easy-routes-private-1"
  }
}

resource "aws_route_table" "easy-routes-private-2" {
  vpc_id = module.vpc.vpc_id

  # route {
  #   cidr_block = var.easy_private_subnet_cidr_2
  # }

  tags = {
    Name = "easy-routes-private-2"
  }
}