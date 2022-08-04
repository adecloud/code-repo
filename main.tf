terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Linux_server" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"

  tags = {
    Name = "Linux_Instance"
  }
}

