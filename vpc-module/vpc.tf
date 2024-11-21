# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"   # Official VPC module from Terraform Registry
  version = "5.13.0"                          # Specific version of the module
 
  # General VPC settings
  name = "vpc-dev"
  cidr = "10.0.0.0/16"                        # VPC CIDR block
 
  # Availability Zones and Subnets
  azs             = ["us-west-1a", "us-west-1c"]   # Define the Availability Zones
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"] # Define the private subnets
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"] # Define the public subnets
 
  # NAT Gateway settings
  enable_nat_gateway  = true                      # Enable NAT Gateway
  single_nat_gateway  = true                      # Use a single NAT Gateway for cost savings
 
  # Database Subnets
  create_database_subnet_group      = true        # Enable database subnet group
  create_database_subnet_route_table = true       # Create route table for database subnets
  database_subnets = ["10.0.151.0/24", "10.0.152.0/24"] # Define the database subnets
 
  # DNS settings
  enable_dns_hostnames  = true
  enable_dns_support    = true
 
  # Tagging the subnets for organization
  public_subnet_tags = {
    Type = "public-subnets"
  }
 
  private_subnet_tags = {
    Type = "private-subnets"
  }
 
  database_subnet_tags = {
    Type = "database-subnets"
  }
 
  # Tags for the VPC and its resources
  tags = {
    Owner       = "FEWA IT"
    Environment = "development"
  }
  vpc_tags = {
    Name = "vpc-dev"
  }
}
