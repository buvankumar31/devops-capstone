terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "devops-capstone-tfstate-buvan-001"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devops-capstone-tf-lock"
    encrypt        = true
  }
}
