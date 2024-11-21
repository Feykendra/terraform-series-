# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-west-1"
}
 
# Instance Type
variable "instance_type" {
  description = "Type of AWS EC2 instance"
  type        = string
  default     = "t2.micro"
}
