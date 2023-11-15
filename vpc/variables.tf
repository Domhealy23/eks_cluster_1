
variable "region" {
  default = "us-east-1"
}

variable "eks_cluster_name" {
  default = "doms-cluster"
}

variable "name" {
  default = "dom"
}


variable "cidr" {
  default = "192.168.0.0/16"
}

variable "private_subnets" {
  default = ["192.168.160.0/19", "192.168.128.0/19", "192.168.96.0/19"]
}

variable "public_subnets" {
  default = ["192.168.64.0/19", "192.168.32.0/19", "192.168.0.0/19"]
}