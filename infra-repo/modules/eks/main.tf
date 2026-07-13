# --------------------------------------------------
# EKS Cluster
# --------------------------------------------------
resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn
  version  = "1.36"

  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator"
  ]

  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }

  vpc_config {
    subnet_ids              = var.cluster_subnet_ids
    endpoint_private_access = true
    endpoint_public_access  = true
    public_access_cidrs     = ["0.0.0.0/0"]
  }

  tags = {
    Name        = var.cluster_name
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "Terraform"
  }
}

# --------------------------------------------------
# EKS Managed Node Group
# --------------------------------------------------

resource "aws_eks_node_group" "this" {

  cluster_name    = aws_eks_cluster.this.name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_group_role_arn

  subnet_ids = var.node_subnet_ids

  instance_types = [
    var.node_instance_type
  ]

  scaling_config {

    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  update_config {
    max_unavailable = 1
  }

  ami_type      = "AL2023_x86_64_STANDARD"
  capacity_type = "ON_DEMAND"
  disk_size     = 20

  depends_on = [
    aws_eks_cluster.this
  ]

  tags = {

    Name        = var.node_group_name
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "Terraform"

    "k8s.io/cluster-autoscaler/enabled"             = "true"
    "k8s.io/cluster-autoscaler/${var.cluster_name}" = "owned"
  }
}

# --------------------------------------------------
# EKS Addons
# --------------------------------------------------

resource "aws_eks_addon" "vpc_cni" {

  cluster_name = aws_eks_cluster.this.name
  addon_name   = "vpc-cni"

  depends_on = [
    aws_eks_node_group.this
  ]
}

resource "aws_eks_addon" "coredns" {

  cluster_name = aws_eks_cluster.this.name
  addon_name   = "coredns"

  depends_on = [
    aws_eks_node_group.this
  ]
}

resource "aws_eks_addon" "kube_proxy" {

  cluster_name = aws_eks_cluster.this.name
  addon_name   = "kube-proxy"

  depends_on = [
    aws_eks_node_group.this
  ]
}
