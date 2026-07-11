output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "jenkins_security_group_id" {
  value = module.security_groups.jenkins_sg_id
}

output "frontend_ecr_repository_url" {
  value = module.ecr.frontend_repository_url
}

output "backend_ecr_repository_url" {
  value = module.ecr.backend_repository_url
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "jenkins_instance_id" {
  value = module.jenkins_server.instance_id
}
