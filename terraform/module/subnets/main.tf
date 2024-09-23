#aws subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.1.0/16"

  tags = {
    Name = "pubic_subnet"
  }
}