variable "instance_type" {
  type        = string
  description = "The type of instance to create"
}

variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the instance"
}

variable "key_name" {
  type        = string
  description = "The key name to use for the instance"
}

variable "instance_tag" {
  type        = string
  description = "The tag to use for the instance"
}

variable "environment" {
  type        = string
  description = "The environment to use for the instance"
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

