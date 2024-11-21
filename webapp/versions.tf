# versions.tf
 
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.72"
    }
  }
}
 
provider "aws" {
  region = "us-west-1"
}
