# VPC Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"

  name = "main"
  cidr = "10.0.0.0/16"

  azs             = ["us-west-1a", "us-west-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]

  enable_nat_gateway = true
  
  # Use the default setting for auto-assign public IP
  map_public_ip_on_launch = true

  tags = {
    Name = "custom-demo-vpc"
  }
}
