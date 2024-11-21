resource "aws_security_group" "web-traffic" {
  name = "Allow HTTPS"
 
  dynamic "ingress" {
    iterator = port
    for_each = var.ingressrules
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
 
  dynamic "egress" {
    iterator = port
    for_each = var.egressrules
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
 
resource "aws_instance" "ec2" {
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
# vpc_security_group_ids = [aws_security_group.web-traffic.id]  # Use the security group ID

  tags = {
    "Name" = "Demo_ec2"
  }
}

 
