# Call remote VPC module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.0.0"
  
  cidr             = "10.0.0.0/16"
  azs              = ["us-west-1a", "us-west-1b"]
  public_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
  enable_nat_gateway = false
}
 
# Keep local EC2 module
module "ec2" {
  source         = "./modules/ec2"
  ami            = "ami-0175bdd48fdb0973b"
  instance_type  = "t2.micro"
  subnet_id      = module.vpc.public_subnets[0]
  ingressrules   = [80, 443]
  egressrules    = [80, 443]
}

# Provider Block
provider "aws" {
  region = "us-west-1"
}
