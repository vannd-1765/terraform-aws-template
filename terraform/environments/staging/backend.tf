terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket         = "demov-tfstate"
    key            = "staging.tfstate"
    dynamodb_table = "terraform-state-lock"
    region         = "us-east-1"
  }
}
