terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "tkv-remote-state"
    key    = "82s-rstate"
    region = "us-east-1"
     dynamodb_table = "tkv-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}