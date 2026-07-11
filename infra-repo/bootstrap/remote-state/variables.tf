variable "aws_region" {
  description = "AWS region for Terraform backend resources"
  type        = string
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "backend_bucket_name" {
  description = "S3 bucket name for Terraform remote state"
  type        = string
}

variable "dynamodb_table_name" {
  description = "DynamoDB table name for Terraform state locking"
  type        = string
}
