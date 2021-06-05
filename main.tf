terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws"{
  profile = "default"
  region  = "us-west-1"
  
}

resource "aws_instance" "app_server" {
  ami           = "ami-0cf6f5c8a62fa5da6"
  instance_type = "t2.micro"

  tags = {
    Name = "myInstance"
  }
}
