terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  # backend "s3" {
  #   bucket = "daws76s-state-dev"
  #   key    = "vpc"
  #   region = "us-east-1"
  #   dynamodb_table = "daws76s-locking-dev"
  # }
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_files  = ["/root/.aws/credentials"]
  #profile = "default"
}