terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
#-   organization = "REPLACE_ME"
   organization = "networknuts"

    workspaces {
      name = "terraform-test"
    }
  }
}

provider "aws" {
  access_key = "AKIAZYXYJ57VVJVCY554"
  secret_key = "CTRv0fTyb6PGWdvBrpUkNDcRvld7hBOx6eJj2BD/"
  region     = "ap-south-1"
}


resource "aws_instance" "ourfirst" {
  ami           = "ami-0447a12f28fddb066"
  instance_type = "t2.micro"
  tags = {
	Name = "terraform"
  }
}
