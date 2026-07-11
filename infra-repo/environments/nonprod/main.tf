module "vpc" {
  source = "../../modules/vpc"

  project_name         = var.project_name
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  cluster_name         = var.eks_cluster_name
}

module "security_groups" {
  source = "../../modules/security-groups"

  project_name        = var.project_name
  environment         = var.environment
  vpc_id              = module.vpc.vpc_id
  allowed_cidr_blocks = var.allowed_cidr_blocks
}


module "iam" {
  source = "../../modules/iam"

  project_name = var.project_name
  environment  = var.environment
}

module "ecr" {
  source = "../../modules/ecr"

  frontend_repo_name = var.frontend_ecr_repo_name
  backend_repo_name  = var.backend_ecr_repo_name
}

module "jenkins_server" {
  source = "../../modules/jenkins-server"

  project_name      = var.project_name
  environment       = var.environment
  ami_id            = var.jenkins_ami_id
  instance_type     = var.jenkins_instance_type
  key_name          = var.jenkins_key_name
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.security_groups.jenkins_sg_id
  instance_profile  = module.iam.jenkins_instance_profile_name
}

module "eks" {
  source = "../../modules/eks"

  project_name        = var.project_name
  environment         = var.environment
  cluster_name        = var.eks_cluster_name
  node_group_name     = var.node_group_name
  cluster_subnet_ids  = concat(module.vpc.public_subnet_ids, module.vpc.private_subnet_ids)
  node_subnet_ids     = module.vpc.private_subnet_ids
  cluster_role_arn    = module.iam.eks_cluster_role_arn
  node_group_role_arn = module.iam.eks_node_group_role_arn
  node_instance_type  = var.node_instance_type
  desired_size        = var.desired_size
  min_size            = var.min_size
  max_size            = var.max_size
}

