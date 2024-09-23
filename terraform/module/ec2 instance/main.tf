# #AWS provider
# provider "aws" {
#   region = "us-east-1"
# }

#create ec2 instance 
resource "aws_instance" "easy-sec" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
  tags = {
    Name = "easy-sec"
  }
}