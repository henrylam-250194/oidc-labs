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
