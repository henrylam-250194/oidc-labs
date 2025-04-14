provider "aws" {
  region = "ap-southeast-1" # Specify the AWS region
}

terraform {
  backend "s3" {
    bucket         = "devops-bucket-henry" # Replace with your S3 bucket name
    key            = "terraform/state"       # Path within the bucket
    region         = "ap-southeast-1"             # Specify the AWS region for the S3 bucket
  }
}

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
}
