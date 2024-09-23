#aws subnet
resource "aws_subnet" "easy-public-subnet-1" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.easy_public_subnet_cidr_1
  availability_zone = var.easy_availability_zone_1

  tags = {
    Name = "easy-public-subnet-1"
  }
}

resource "aws_subnet" "easy-private-subnet-1" {
  vpc_id = module.vpc.vpc_id
  cidr_block = "192.168.10.0/24"
  availability_zone = var.easy_availability_zone_1

  tags = {
    Name = "easy-private-subnet-1"
  }
}

resource "aws_subnet" "easy-public-subnet-2" {
  vpc_id = module.vpc.vpc_id
  cidr_block = "192.168.2.0/24"

  tags = {
    Name = "easy-public-subnet-2"
  }
}

resource "aws_subnet" "easy-private-subnet-2" {
  vpc_id = module.vpc.vpc_id
  cidr_block = "192.168.20.0/24"

  tags = {
    Name = "easy-private_subnet-2"
  }
}