# #AWS provider
# provider "aws" {
#   region = "us-east-1"
# }

#create ec2 instance 
resource "aws_instance" "easy-sec" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
  subnet_id = path.module.subnets.easy_public_subnet_1.id

  tags = {
    Name = "easy-sec"
  }
}

resource "aws_instance" "easy-prim" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  subnet_id = module.subnets.easy_private_subnet_1_id

  tags = {
    Name = "easy-sec"
  }
}

