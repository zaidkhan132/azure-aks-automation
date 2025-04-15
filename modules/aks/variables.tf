variable "cluster_name" {
  description = "Name of the AKS cluster"
}

variable "resource_group_name" {
  description = "Name of the resource group for the AKS cluster"
}

variable "location" {
  description = "Azure region for the AKS cluster"
}

variable "node_group" {
  description = "Name of the node group in the AKS cluster"
}

variable "node_count" {
  description = "Number of nodes in the node group"
  type        = number
}

variable "node_group_label" {
  description = "Label for the node group"
  default     = "custom-group"
}

variable "environment" {
  description = "Environment for the resources (dev, prod, staging)"
}

variable "owner" {
  description = "Owner of the resources"
}
