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
    key    = "aws-vm-modulo-local/terraform.tfstate"
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

module "network" {
  source = "./network"

  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  environment = "developement"
}

