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
  access_key = "AKIAZYXYJ57VQUJH5XXB"
  secret_key = "HIARHpArPlItdU0YAgnyUZWm2sl+BJGa7xkDIVQs"
  region     = "ap-south-1"
}


resource "aws_instance" "ourfirst" {
  ami           = "ami-0447a12f28fddb066"
  instance_type = "t2.micro"
  tags = {
	Name = "terraform"
  }
}
