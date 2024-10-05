#provider block to define the desired cloud provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

#configure the desired cloud provider
provider "aws" {
  region = "us-east-1"
}

#module calling and use
module "vpc" {
  source = "./module/vpc"
  cidr   = "192.168.0.0/16"
}

module "subnets" {
  source = "./module/subnets"
  easy_public_subnet_cidr_1  = "192.168.1.0/24"
  easy_private_subnet_cidr_1 = "192.168.10.0/24"
  easy_public_subnet_cidr_2  = "192.268.2.0/24"
  easy_private_subnet_cidr_2 = "192.168.20/24"
  easy_availability_zone_1   = "us-east-1a"
  easy_availability_zone_2   = "us-east-1b"
  assign_public_ip           = true
}

module "igw" {
  source = "./module/igw"
}

module "route_table" {
  source = "./module/route_table"
}

module "rt_association" {
  source = "./module/rt_association"
}

module "security_group" {
  source = "./module/sg"
}
module "key_pair" {
  source     = "./module/key_pair"
  key_name   = "developer -  keys"
  public_key = file("~/.ssh/id_rsa.pub")
}

module "ec2_instance" {
  source              = "./module/ec2_instance"
  ami_value           = "ami-0e86e20dae9224db8"
  instance_type_value = "t2.micro"
  instance_count_value_prim = 1
  instance_count_value_sec  = 2
  # key_name_value      = module.key_pair.key_pair_name_out
  # security_group_id   = module.security_group.security_group_id_out
  # subnet_id_value_prim      = module.subnets.subnet_id_out_prim
  # subnet_id_value_sec       = module.subnets.subnet_id_out_sec
}