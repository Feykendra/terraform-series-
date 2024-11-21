# ec2instance.tf
# EC2 Instance Resource using variables
resource "aws_instance" "myec2vm" {
  ami           = data.aws_ami.redhat_linux.id
  instance_type = var.instance_type    # Using the variable for instance type
  key_name      = var.key_pair_name  # Use the key pair from the variable
  user_data     = file("${path.module}/app1-install.sh") # Install script for Apache

   # Attach the security group
  vpc_security_group_ids = [aws_security_group.allow_http.id]
 

  tags = var.instance_tags             # Using the variable for tags
}
