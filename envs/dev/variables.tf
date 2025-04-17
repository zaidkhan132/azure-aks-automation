variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "tags" {
  description = "Tags for Azure resources"
  type        = map(string)
}

variable "infra_pool_count" {
  description = "Number of nodes for the infra_pool"
  type        = number
}

variable "core_pool_count" {
  description = "Number of nodes for the core_pool"
  type        = number
}
