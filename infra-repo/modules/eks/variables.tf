variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "node_group_name" {
  description = "EKS node group name"
  type        = string
}

variable "cluster_subnet_ids" {
  description = "Subnet IDs for EKS cluster"
  type        = list(string)
}

variable "node_subnet_ids" {
  description = "Private subnet IDs for EKS node group"
  type        = list(string)
}
variable "cluster_role_arn" {
  description = "IAM role ARN for EKS cluster"
  type        = string
}

variable "node_group_role_arn" {
  description = "IAM role ARN for EKS node group"
  type        = string
}

variable "node_instance_type" {
  description = "Instance type for EKS worker nodes"
  type        = string
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}
variable "jenkins_role_arn" {
  description = "IAM Role ARN used by Jenkins"
  type        = string
}
