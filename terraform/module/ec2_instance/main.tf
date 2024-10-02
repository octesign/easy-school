# #AWS provider
# provider "aws" {
#   region = "us-east-1"
# }

#create ec2 instances in the public subnets
resource "aws_instance" "easy-sec" {
  count = var.instance_count_value_sec
  ami           = var.ami_value
  instance_type = var.instance_type_value
  key_name = module.key_pair.easy_access.key_name
  subnet_id = path.module.subnets.easy_public_subnet_1.id
  security_groups = [module.sg.public_security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "easy-sec"
  }
}

#create ec2 instances in the private subnets
resource "aws_instance" "easy-prim" {
  count = var.instance_count_value_prim
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = module.key_pair.easy_access.key_name
  subnet_id = module.subnets.easy_private_subnet_1_id
  security_groups = [module.sg.private_security_group_id]
  associate_public_ip_address = false

  tags = {
    Name = "easy-sec"
  }
}

