variable "node_group" {
  description = "Name of the node group in the AKS cluster"
  type        = string
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group for the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region where the AKS cluster will be deployed"
  type        = string
}

variable "tags" {
  description = "Tags for the Azure resources"
  type        = map(string)
}

variable "node_pools" {
  description = "Map of node pools and their configurations"
  type = map(object({
    vm_size    = string
    node_count = number
    mode       = string
    tags       = map(string)
  }))
}
