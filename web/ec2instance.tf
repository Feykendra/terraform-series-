resource "aws_instance" "myec2vm" {
  ami = "ami-0c5ebd68eb61ff68d" # Replace this with the appropriate AMI ID for your region
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
