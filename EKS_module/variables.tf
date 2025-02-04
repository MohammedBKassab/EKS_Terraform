variable "eks_key_name" {
    type = string
    default = "eks_key"
  
}
variable "cluster_name" {
    default = "eks-cluster"
}

variable "nodes_name" {
    type = list(string)
    default = ["node1" , "node2"]
}

variable "instance_types" {
    type = string
    default = "t2.medium"
}
 variable "subnet_ids" {
    type = list(string)
 }
 variable "cluster_security_group_id" {
    type = string
 }
 variable "node_security_group_id" {
    type = string
 }