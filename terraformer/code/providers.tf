terraform {
  required_version = ">= 1.3"

  # Cannot use variables in backend configuration
  backend "s3" {
    bucket         = "jaesoon-s3-tf-state"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "ddb-tf-state-lock"
    encrypt        = "true"
  }
}

provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  exclude_names = ["ap-northeast-1a", "ap-northeast-1c"]
}
