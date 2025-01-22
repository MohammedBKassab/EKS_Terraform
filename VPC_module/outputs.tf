output "subnet_ids" {
  value = aws_subnet.eks_subnet[*].id
}

output "subnet_cidr_blocks" {
  value = aws_subnet.eks_subnet[*].cidr_block
}

output "subnet_map_public_ip_on_launch" {
  value = aws_subnet.eks_subnet[*].map_public_ip_on_launch
}