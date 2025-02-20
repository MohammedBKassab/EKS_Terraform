# # to use s3 backend 
# # s3 bucket is configured at command line
# terraform {
#   backend "s3" {}
# }

# setup terraform aws provider to create resources in your desired aws region
provider "aws" {
  region = var.region

}

# invoke cluster module which creates vpc, subnets and eks cluter
module "cluster" {
  source = "./cluster"

  # vpc details
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr

  # eks details
  eks_cluster_name = var.cluster_name
  k8s_version      = var.k8s_version
}