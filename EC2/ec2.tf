provider "aws" {
    region = "us-west-1"
}

resource "aws_instance" "example" {
    ami = "ami-0c5ebd68eb61ff68d"
    instance_type = "t2.micro" 
    tags = {
        Name = "terraform"
    }
}