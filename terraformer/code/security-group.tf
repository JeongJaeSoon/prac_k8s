resource "aws_security_group" "sg-eks-cluster" {
  name        = var.sg-eks-cluster-name
  description = "Security group for eks-cluster"
  vpc_id      = var.vpc-id

  tags = {
    Name = var.sg-eks-cluster-name
  }
}

resource "aws_security_group_rule" "sg-eks-cluster-ingress" {
  security_group_id = aws_security_group.sg-eks-cluster.id
  type              = "ingress"
  description       = "Ingress Security Group Rule for eks-cluster"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sg-eks-cluster-egress" {
  security_group_id = aws_security_group.sg-eks-cluster.id
  type              = "egress"
  description       = "Egress Security Group Rule for eks-cluster"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
