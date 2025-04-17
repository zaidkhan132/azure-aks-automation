variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
}

variable "tags" {
  description = "Tags to associate with resources"
  type        = map(string)
}

variable "node_group" {
  description = "The name of the node group"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node group"
  type        = number
}

variable "node_pools" {
  description = "Additional node pools configuration"
  type = map(object({
    vm_size    = string
    node_count = number
    mode       = string
    tags       = map(string)
  }))
}
