provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "ec2-instance/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = "terraform-lock"
  }
}

