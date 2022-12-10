terraform {
  backend "s3" {
    bucket = "euran-terraform"
    key = "server_name/statefile"
    region = "us-east-1"
  }
}  