# Output for EC2 instance public IP
output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.myec2vm.public_ip
}
 
# Output for EC2 instance public DNS
output "instance_public_dns" {
  description = "The public DNS of the EC2 instance"
  value       = aws_instance.myec2vm.public_dns
}
