module "VPC" {
    source = "./VPC_module"
    cidr_block = var.vpc_cidr_block
    availability_zones = var.availability_zones
}


module "EKS" {
    source = "./EKS_module"
    subnet_ids = module.VPC.subnet_ids
    cluster_security_group_id = aws_security_group.cluster_sg.id
    node_security_group_id = aws_security_group.node_sg.id
}

