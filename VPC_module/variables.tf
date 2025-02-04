variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}
variable "availability_zones" {
    type = list(string)
    default = [ "us-east-1a", "us-east-1b" ,
                "us-east-1c" , "us-east-1d" ]
}

variable "cluster_sg" {
    type = string
    default = "cluster_sg"
  
}

variable "node_sg" {
    type = string
    default = "node_sg"
}