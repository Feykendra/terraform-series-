# Terraform Block
terraform {
  required_version = "~> 1.0"  # Compatible with versions >= 1.0 and < 2.0
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.72"  # AWS provider version 5.72 or higher, but below 6.0
    }
  }
}
 
# Provider Block
provider "aws" {
  region  = var.aws_region  # Use the region specified in variables.tf
  profile = "default"       # AWS CLI profile to be used for authentication
}
