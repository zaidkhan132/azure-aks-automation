variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
}

variable "tags" {
  description = "Tags to associate with resources"
  type        = map(string)
}

variable "node_group" {
  description = "The name of the default node group"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
}

variable "infra_pool_count" {
  description = "Number of nodes for infrastructure pool"
  type        = number
}

variable "core_pool_count" {
  description = "Number of nodes for core workloads"
  type        = number
}
