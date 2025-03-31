variable "environment" {
  type        = string
  description = "The environment to use for the VPC"
}


variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the public subnet"
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the private subnet"
}

variable "availability_zone" {
  type        = string
  description = "The availability zone to use for the subnets"
}
















