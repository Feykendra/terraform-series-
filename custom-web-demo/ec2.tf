# EC2 Instance with Custom Nginx Web Page
resource "aws_instance" "nginx_server" {
  ami           = "ami-0175bdd48fdb0973b"  # Amazon Linux 2
  instance_type = var.instance_type
  subnet_id = module.vpc.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y nginx
              systemctl start nginx
              systemctl enable nginx
              
              # Create a custom HTML page
              cat <<EOM > /usr/share/nginx/html/index.html
              <html>
              <head>
                <title>Feyi Demo Class</title>
                <style>
                  body {
                    font-family: Arial, sans-serif;
                    text-align: center;
                    background-color: #f4f4f4;
                  }
                  h1 {
                    color: #3498db;
                  }
                  p {
                    font-size: 18px;
                    color: #333;
                  }
                  .content {
                    margin-top: 50px;
                  }
                </style>
              </head>
              <body>
                <div class="content">
                  <h1>Welcome to Feyi Demo Class</h1>
                  <p>This is a custom web page deployed using Terraform and Nginx on AWS EC2.</p>
                  <p>Explore the cloud and learn how to automate infrastructure!</p>
                </div>
              </body>
              </html>
              EOM
              EOF
 
  tags = {
    Name = "nginx_server"
  }
 
}
