variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}

variable "s3_bucket_name" {
  type    = string
  default = "s3-tf-state"
}

variable "ddb_table_name" {
  type    = string
  default = "ddb-tf-state-lock"
}
