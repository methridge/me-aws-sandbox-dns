terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
  required_version = ">= 1.0"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "methridge"
    workspaces {
      name = "me-aws-sandbox-dns"
    }
  }
}

provider "aws" {
  region = var.region
}
