# #provider block
# provider "aws" {
#   region = "us-east-1"
# }

#create resource
resource "aws_key_pair" "easy_access" {
  key_name = var.key_name
  public_key = var.public_key
}