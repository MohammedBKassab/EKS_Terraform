output "private_key_filename" {
  description = "The filename of the generated private key"
  sensitive = true
  value       = local_file.private_key.filename
}

output "cluster_name" {
    description = "The name of the EKS cluster"
    value = aws_eks_cluster.eks_cluster.name
}

output "cluster_endpoint" {
    description = "value of the cluster endpoint"
    value = aws_eks_cluster.eks_cluster.endpoint
}

output "node_group_ip" {
    description = "list of node group ip"
    value = aws_eks_node_group.eks_node_grp.node_group_id
  
}

