module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"
 
  name = "vpc-prod"
  cidr = "10.0.0.0/16"
 
  azs             = ["us-west-1a", "us-west-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
 
  enable_nat_gateway = true
  single_nat_gateway = true
 
  tags = {
    Owner       = "FEWA IT"
    Environment = "production"
  }
}