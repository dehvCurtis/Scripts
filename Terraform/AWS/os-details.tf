provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "node" {
  ami = "ami-0a63f96e85105c6d3"
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.node.public_ip
}