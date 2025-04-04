#ec2 configuration
instance_type             = "t2.micro"
ami_id                    = "ami-06661384e66f2da0e"
key_name                  = "oidc-labs-key"
instance_tag              = "ec2-instance"
environment               = "dev"
#vpc configuration
vpc_cidr_block            = "10.0.0.0/16"
public_subnet_cidr_block  = "10.0.1.0/24"
private_subnet_cidr_block = "10.0.2.0/24"
availability_zone         = "ap-southeast-1a"