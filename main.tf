provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./VPC_module"

  vpc_cidr = var.vpc_cidr
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
}

module "eks" {
  source = "./EKS_module"

  cluster_name = var.cluster_name
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  eks_version = var.eks_version
}