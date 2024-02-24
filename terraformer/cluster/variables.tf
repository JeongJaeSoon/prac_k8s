variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}

variable "eks-cluster-name" {
  type    = string
  default = "eks-cluster"
}

variable "eks-nodegroup-name" {
  type    = string
  default = "eks-nodegroup"
}

variable "iam-role-eks-cluster-name" {
  type    = string
  default = "eks-cluster-iam-role"
}

variable "iam-role-eks-nodegroup-name" {
  type    = string
  default = "eks-nodegroup-iam-role"
}

variable "sg-eks-cluster-name" {
  type    = string
  default = "eks-cluster-sg"
}

variable "vpc-id" {
  type    = string
  default = "vpc-0a0a0a0a0a0a0a0a0"
}

variable "vpc-subnet-ids" {
  type    = list(string)
  default = ["subnet-0a0a0a0a0a0a0a0a0", "subnet-0b0b0b0b0b0b0b0b0"]
}

variable "instance_types" {
  type    = list(string)
  default = ["t3a.medium"]
}
