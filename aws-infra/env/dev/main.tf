# Start Generation Here
module "ec2_instance" {

  source         = "../../modules/EC2"
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  key_name       = var.key_name
  instance_tag   = var.instance_tag
  environment    = var.environment
  
}

module "vpc" {

  source                     = "../../modules/VPC"
  environment                = var.environment
  vpc_cidr_block             = var.vpc_cidr_block
  public_subnet_cidr_block   = var.public_subnet_cidr_block
  private_subnet_cidr_block  = var.private_subnet_cidr_block
  availability_zone          = var.availability_zone

}