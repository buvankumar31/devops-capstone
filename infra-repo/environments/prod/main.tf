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

module "iam" {
  source = "../../modules/iam"

  project_name = var.project_name
  environment  = var.environment
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
