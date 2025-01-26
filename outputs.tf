output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.VPC.vpc_id
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = module.VPC.subnet_ids
}

output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.EKS.cluster_name
}

output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = module.EKS.cluster_endpoint
}

# output "eks_node_group_ips" {
#   description = "List of node group IPs"
#   value       = module.EKS.node_group_ips
# }