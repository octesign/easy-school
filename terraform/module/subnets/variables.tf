# Variables for CIDR blocks for the subnets
variable "easy_public_subnet_cidr_1" {
  description = "CIDR block for the first easy_public_subnet."
  type        = string
}

variable "easy_private_subnet_cidr_1" {
  description = "CIDR block for the first easy_private_subnet."
  type        = string
}

variable "easy_public_subnet_cidr_2" {
  description = "CIDR block for the second easy_public_subnet."
  type        = string
}

variable "easy_private_subnet_cidr_2" {
  description = "CIDR block for the second easy_private_subnet."
  type        = string
}

# Variables for availability zones
variable "easy_availability_zone_1" {
  description = "Availability Zone for the first public and private subnets."
  type        = string
  default     = "us-east-1a"
}

variable "easy_availability_zone_2" {
  description = "Availability Zone for the second public and private subnets."
  type        = string
  default     = "us-east-1b"
}

# Variable for enabling or disabling public IP assignment for public subnets
variable "assign_public_ip" {
  description = "Whether to auto-assign public IPs in public subnets."
  type        = bool
  default     = true
}
