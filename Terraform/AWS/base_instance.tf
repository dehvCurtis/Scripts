provider "aws" {
  region = "us-east-2"
}

resource "aws_kube" "kube" {
  ami = "ami-026dea5602e368e96"
  instance_type = "t2.micro"
}

