resource "aws_internet_gateway" "easy-school-igw" {
  vpc_id = moudule.vpc.vpc_id

  tags = {
    Name = "easy-school-igw"
  }
}