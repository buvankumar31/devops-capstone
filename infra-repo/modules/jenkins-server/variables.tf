variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for Jenkins EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for Jenkins"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name for Jenkins"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where Jenkins EC2 will be launched"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for Jenkins EC2"
  type        = string
}

variable "instance_profile" {
  description = "IAM instance profile name for Jenkins EC2"
  type        = string
}
