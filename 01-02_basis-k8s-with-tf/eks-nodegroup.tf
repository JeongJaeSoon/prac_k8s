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
    desired_size = 2
    min_size     = 1
    max_size     = 3
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
