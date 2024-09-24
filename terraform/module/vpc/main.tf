# provider "aws" {
#   region = "us-east-1"
# }


#provision vpc resource - aws_vpc
resource "aws_vpc" "easy-school" {
  cidr_block       = var.cidr 
  instance_tenancy = "default"

  tags = {
    Name = "easy-school"
  }
}