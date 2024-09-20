#provider block to specify desired cloud provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

#configuring the AWS provider
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

#create ec2 instance 
resource "aws_instance" "easy-sec" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
  tags = {
    Name = "easy-sec"
  }
}