provider "aws" {
  region = "ap-northeast-1"
  access_key = "dummy"
  secret_key = "dummy"
  skip_credentials_validation = true
  skip_requesting_account_id = true
  skip_metadata_api_check = true
  s3_force_path_style = true
  endpoints {
    s3 = "http://host.docker.internal:4572"
  }
}

resource "random_string" "id" {
  length = "5"
  special = false
  upper = false
}

resource "aws_s3_bucket" "bucket" {
  bucket = "mybucket-${random_string.id.result}"
}
