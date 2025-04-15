variable "cluster_name" {
  description = "Name of the AKS cluster"
}

variable "resource_group_name" {
  description = "Name of the resource group for the AKS cluster"
}

variable "node_group" {
  description = "Name of the node group in the AKS cluster"
}

variable "node_count" {
  description = "Number of nodes in the node group"
  type        = number
}
