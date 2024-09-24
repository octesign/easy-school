#aws subnet
resource "aws_subnet" "easy-public-subnet-1" {
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = var.easy_public_subnet_cidr_1
  availability_zone       = var.easy_availability_zone_1
  map_public_ip_on_launch = var.assign_public_ip
  tags = {
    Name = "easy-public-subnet-1"
  }
}

resource "aws_subnet" "easy-private-subnet-1" {
  vpc_id            = module.vpc.vpc_id
  cidr_block        = var.easy_private_subnet_cidr_1
  availability_zone = var.easy_availability_zone_1
  # map_public_ip_on_launch = var.assign_public_ip

  tags = {
    Name = "easy-private-subnet-1"
  }
}

resource "aws_subnet" "easy-public-subnet-2" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.easy_public_subnet_cidr_2
  availability_zone = var.easy_availability_zone_2
  map_public_ip_on_launch = var.assign_public_ip
  tags = {
    Name = "easy-public-subnet-2"
  }
}

resource "aws_subnet" "easy-private-subnet-2" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.easy_private_subnet_cidr_2
  availability_zone = var.easy_availability_zone_2
  map_public_ip_on_launch = var.assign_public_ip

  tags = {
    Name = "easy-private-subnet-2"
  }
}
