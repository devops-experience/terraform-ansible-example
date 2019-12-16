terraform {
  required_version = ">= 0.12.7"
}

# Specify the provider and access details
provider "aws" {
  version = "~> 2.7"
  region  = "us-west-2"
}
