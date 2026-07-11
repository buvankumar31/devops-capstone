variable "aws_region" {
  description = "AWS region for prod resources"
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
  description = "VPC CIDR block for prod"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs for prod"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDRs for prod"
  type        = list(string)
}

variable "availability_zones" {
  description = "AZs for prod"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "Prod EKS cluster name"
  type        = string
}

variable "node_group_name" {
  description = "Prod EKS node group name"
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
