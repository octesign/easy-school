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
  cidr = "192.168.0.0/16"
}

module "ec2_instance" {
  source              = "./module/ec2 instance"
  ami_value           = "ami-0e86e20dae9224db8"
  instance_type_value = "t2.micro"
}

module "key_pair" {
  source = "./module/key pair"
  key_name = "developer -  keys"
  public_key= file("~/.ssh/id_rsa.pub")
}


