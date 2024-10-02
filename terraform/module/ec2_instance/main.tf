# #AWS provider
# provider "aws" {
#   region = "us-east-1"
# }

#create ec2 instances in the public subnet 2
resource "aws_instance" "easy-pub" {
  count = var.instance_count_value_sec
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = module.key_pair.easy_access.key_name
  subnet_id = path.module.subnets.easy_public_subnet_2.id
  security_groups = [module.sg.public_security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "easy-pub-${count.index + 1}"
  }
}

#create ec2 instances in the public subnet 1
resource "aws_instance" "easy-sec" {
  count = var.instance_count_value_sec
  ami           = var.ami_value
  instance_type = var.instance_type_value
  key_name = module.key_pair.easy_access.key_name
  subnet_id = path.module.subnets.easy_public_subnet_1.id
  security_groups = [module.sg.public_security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "easy-sec-${count.index + 1}"
  }
}

#create ec2 instances in the private subnet 2
resource "aws_instance" "easy-back" {
  count = var.instance_count_value_prim
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = module.key_pair.easy_access.key_name
  subnet_id = module.subnets.easy_private_subnet_2_id
  security_groups = [module.sg.private_security_group_id]
  associate_public_ip_address = false

  tags = {
    Name = "easy-back-${count.index + 1}"
  }
}

#create ec2 instances in the private subnet 1
resource "aws_instance" "easy-prim" {
  count = var.instance_count_value_prim
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = module.key_pair.easy_access.key_name
  subnet_id = module.subnets.easy_private_subnet_1_id
  security_groups = [module.sg.private_security_group_id]
  associate_public_ip_address = false

  tags = {
    Name = "easy-prim-${count.index + 1}"
  }
}

