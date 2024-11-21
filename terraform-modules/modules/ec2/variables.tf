variable "ami" {
  type    = string
  default = "ami-0175bdd48fdb0973b"  # Amazon Linux 2 AMI
}
 
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
 
variable "subnet_id" {
  type = string
}
 
variable "ingressrules" {
  type    = list(number)
  default = [80, 443]
}
 
variable "egressrules" {
  type    = list(number)
  default = [80, 443]
}
