resource "aws_eks_node_group" "eks-nodegroup" {
  cluster_name    = aws_eks_cluster.eks-cluster.name
  node_group_name = var.eks-nodegroup-name
  node_role_arn   = aws_iam_role.iam-role-eks-nodegroup.arn
  subnet_ids      = var.vpc-subnet-ids
  instance_types  = var.instance_types
  disk_size       = 20

  labels = {
    "role" = "eks-nodegroup"
  }

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.iam-policy-eks-nodegroup,
    aws_iam_role_policy_attachment.iam-policy-eks-nodegroup-cni,
    aws_iam_role_policy_attachment.iam-policy-eks-nodegroup-ecr,
  ]

  tags = {
    "Name" = "${aws_eks_cluster.eks-cluster.name}-worker-node"
  }
}

resource "aws_eks_node_group" "eks-nodegroup2" {
  cluster_name    = aws_eks_cluster.eks-cluster.name
  node_group_name = var.eks-nodegroup-name-2
  node_role_arn   = aws_iam_role.iam-role-eks-nodegroup.arn
  subnet_ids      = var.vpc-subnet-ids
  # instance_types  = var.instance_types
  # disk_size       = 20

  labels = {
    "role" = "eks-nodegroup"
  }

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 1
  }

  launch_template {
    id      = aws_launch_template.launch-template.id
    version = aws_launch_template.launch-template.latest_version
  }

  tags = {
    "Name" = "${aws_eks_cluster.eks-cluster.name}-worker-node2"
  }
}
