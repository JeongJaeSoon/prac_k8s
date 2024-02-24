resource "aws_s3_bucket" "s3-tf-state" {
  bucket = var.s3_bucket_name

  tags = {
    "Name" = var.s3_bucket_name
  }
}

resource "aws_dynamodb_table" "ddb-tf-state-lock" {

  depends_on   = [aws_s3_bucket.s3-tf-state]
  name         = var.ddb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    "Name" = var.ddb_table_name
  }
}
