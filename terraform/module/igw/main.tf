resource "aws_internet_gateway" "easy-school-igw" {
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "easy-school-igw"
  }
}