provider "aws" {
  region = "us-east-2"
}

# web server build
resource "aws_instance" "example" {
  ami = "ami-0a63f96e85105c6d3"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  tags = {
    Name = "terraform-example"
  }
}

# security group
resource "aws_security_group" "instance" {
  name = "terraform-example-instace"

  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
