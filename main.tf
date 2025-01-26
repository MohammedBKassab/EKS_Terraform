module "EKS" {
    source = "./EKS_module"
}

module "VPC" {
    source = "./VPC_module"
}