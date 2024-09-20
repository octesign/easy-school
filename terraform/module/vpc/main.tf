provider "aws" {
  region = "us-east-1"
}

#provision vpc resource - aws_vpc
resource "aws_vpc" "easy-school" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "easy-school"
  }
}