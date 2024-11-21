# variables.tf
 
# Variable for the AWS AMI
variable "ami_id" {
  description = "The Amazon Machine Image (AMI) ID"
  type        = string
  default     = "ami-029343a13d7bb7b9c" # default value for us-west-1
}
 
# Variable for the instance type
variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.medium"
}
 
# Key Pair variable
variable "key_pair_name" {
  description = "The name of the key pair to use for SSH access to the EC2 instance"
  type        = string
  default     = "my-key-pair"  # Provide a default value r leave it out
}

# Variable for tags
variable "instance_tags" {
  description = "A map of tags for the EC2 instance"
  type        = map(string)
  default     = {
    Name        = "EC2 Demo"
    Environment = "Production"
  }
}


