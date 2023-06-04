#
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "romain-cambonie"

    workspaces {
      name = "client"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    tfe = {
      source = "hashicorp/tfe"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "tfe" {
  token = var.tfe_token
}
