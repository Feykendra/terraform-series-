terraform {
  backend "s3" {
    bucket         = "terraform1b"
    key            = "vpc/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
