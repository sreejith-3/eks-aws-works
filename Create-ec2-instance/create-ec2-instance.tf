# Terraform Settings Blocck
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4"
    }
  }
}
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-south-1"
  access_key = var.access_key
  secret_key = var.secret_key
  }


# Resource Block
resource "aws_instance" "ec2-instance" {
  ami           = "ami-0da59f1af71ea4ad2"
  instance_type = "t2.micro"
  subnet_id     = "subnet-06eca3e38c6efe600"  # Specify a valid subnet ID here
  key_name      = "sreejith-new"

  tags = {
    name = "SuperBulls"
  } 
}

