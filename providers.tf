terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
  backend "s3" {
    bucket = "statefilebucketcubx"
    region = "us-east-1"
    key = "terraform5.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
#  access_key = var.AWS_ACCESS_KEY_ID
#  secret_key = var.AWS_SECRET_ACCESS_KEY

}
