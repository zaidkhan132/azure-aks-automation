variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the deployment"
  type        = string
}

variable "node_group" {
  description = "Name of the node group"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the node group"
  type        = number
}

variable "tags" {
  description = "Tags for the Azure resources"
  type        = map(string)
}

variable "node_pools" {
  description = "Node pool configuration"
  type = map(object({
    vm_size    = string
    node_count = number
    mode       = string
    tags       = map(string)
  }))
}

