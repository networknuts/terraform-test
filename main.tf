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
  region     = "ap-south-1"
}


resource "aws_instance" "ourfirst" {
  ami           = "ami-0447a12f28fddb066"
  instance_type = "t2.micro"
  tags = {
	Name = "terraform"
  }
}
