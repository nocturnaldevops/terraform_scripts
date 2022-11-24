terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATDKQFYRXTXXVYKVI"
  secret_key = "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"
}
resource "aws_instance" "myinstance" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"

  tags = {
    Name = "Ubuntu"
  }
}