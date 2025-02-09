terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3"{

   bucket = "tkv-workspaces"
    key    = "tkv-module-test"
    region = "us-east-1"
    dynamodb_table = "tkv-ws-locking"
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}