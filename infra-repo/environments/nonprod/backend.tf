terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "buvan-terraform-state-975800361242"
    key            = "nonprod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
