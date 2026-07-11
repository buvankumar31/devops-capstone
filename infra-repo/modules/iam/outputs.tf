output "eks_cluster_role_arn" {
  description = "IAM role ARN for EKS cluster"
  value       = aws_iam_role.eks_cluster_role.arn
}

output "eks_node_group_role_arn" {
  description = "IAM role ARN for EKS node group"
  value       = aws_iam_role.eks_node_group_role.arn
}

output "jenkins_role_arn" {
  description = "IAM role ARN for Jenkins EC2"
  value       = aws_iam_role.jenkins_role.arn
}

output "jenkins_instance_profile_name" {
  description = "Instance profile name for Jenkins EC2"
  value       = aws_iam_instance_profile.jenkins_instance_profile.name
}
