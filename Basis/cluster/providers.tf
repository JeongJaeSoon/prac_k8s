terraform {
  required_version = ">= 1.3"
}

provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  exclude_names = ["ap-northeast-1a", "ap-northeast-1c"]
}
