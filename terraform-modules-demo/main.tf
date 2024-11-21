module "vpc" {
  source     = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
  name       = "ProdVPC"
}
 
output "vpc_id" {
  value = module.vpc.vpc_id
}
# Provider Block
provider "aws" {
  region  = "us-west-1"
}
