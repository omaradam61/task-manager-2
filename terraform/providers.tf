terraform {
  required_version = ">= 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # Uncomment for remote state (recommended). Create the bucket first.
  # backend "s3" {
  #   bucket = "my-terraform-state"
  #   key    = "devops101/terraform.tfstate"
  #   region = "us-east-1"
  # }
}

provider "aws" {
  region = var.region
}
