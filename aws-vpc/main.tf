terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }

  backend "s3" {
    bucket = "caio-remote-state-s2"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "caiogiffoni"
      manageg-by = "terraform"
    }
  }
}



