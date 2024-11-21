# securitygroup.tf
 
# Security Group for EC2 instance
resource "aws_security_group" "allow_http" {
  name        = "allow_http_traffic"
  description = "Allow HTTP traffic"
 
  # Inbound rule to allow HTTP traffic (port 80)
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow traffic from anywhere
  }
 
  # Inbound rule to allow SSH (port 22) traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow traffic from anywhere (for demo purposes)
  }
 
  # Outbound rule to allow all traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # All protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  tags = {
    Name = "allow_http_traffic"
  }
}
