# which provider you are connecting to, version
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
  }

  backend "s3" {
        bucket = "terraform-docker-kub8-resource"
        key    = "provisioner"
        region = "ap-south-1"
        dynamodb_table = "Terraform-lock"
    }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}