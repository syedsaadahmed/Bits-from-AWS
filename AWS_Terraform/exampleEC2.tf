# Create a new instance of the latest Ubuntu 20.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Setting up the EC2 instace named as testingweb

resource "aws_instance" "testingweb" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

