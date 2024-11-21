# Outputs for EC2 instance
output "ec2_public_ip" {
  description = "Public IP of the Nginx server"
  value       = aws_instance.nginx_server.public_ip
}
 
output "ec2_public_dns" {
  description = "Public DNS of the Nginx server"
  value       = aws_instance.nginx_server.public_dns
}
