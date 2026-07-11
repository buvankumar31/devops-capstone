variable "aws_region" {
  description = "AWS region for nonprod resources"
  type        = string
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block for nonprod"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs for nonprod"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDRs for nonprod"
  type        = list(string)
}

variable "availability_zones" {
  description = "AZs for nonprod"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "Nonprod EKS cluster name"
  type        = string
}

variable "node_group_name" {
  description = "Nonprod EKS node group name"
  type        = string
}

variable "node_instance_type" {
  description = "EKS node instance type"
  type        = string
}

variable "desired_size" {
  description = "Desired EKS node count"
  type        = number
}

variable "min_size" {
  description = "Minimum EKS node count"
  type        = number
}

variable "max_size" {
  description = "Maximum EKS node count"
  type        = number
}

variable "jenkins_instance_type" {
  description = "EC2 instance type for Jenkins"
  type        = string
}

variable "jenkins_key_name" {
  description = "EC2 key pair name for Jenkins"
  type        = string
}

variable "frontend_ecr_repo_name" {
  description = "Frontend ECR repository name"
  type        = string
}

variable "backend_ecr_repo_name" {
  description = "Backend ECR repository name"
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "CIDR blocks allowed to access Jenkins"
  type        = list(string)
}

variable "jenkins_ami_id" {
  description = "AMI ID for Jenkins EC2 instance"
  type        = string
}
