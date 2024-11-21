# Fetch the latest Red Hat Enterprise Linux AMI ID with specific architecture and root device type
data "aws_ami" "redhat_linux" {
  most_recent = true
  
  filter {
    name   = "name"
    values = ["RHEL-*"] # Fetch Red Hat AMI
  }
  
  filter {
    name   = "virtualization-type"
    values = ["hvm"] # Hardware Virtual Machine (HVM) AMIs
  }
  
  filter {
    name   = "architecture"
    values = ["x86_64"] # Specify the architecture, e.g., x86_64 or arm64
  }
  
  filter {
    name   = "root-device-type"
    values = ["ebs"] # Specify root device type, e.g., ebs or instance-store
  }
  
  owners = ["309956199498"] # Red Hat's official AMI account ID
}
