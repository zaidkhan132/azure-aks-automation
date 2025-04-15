variable "cluster_name" {
  description = "The name of the AKS cluster"
}

variable "location" {
  description = "The Azure region where the cluster will be created"
}

variable "resource_group_name" {
  description = "The name of the resource group for the AKS cluster"
}

variable "node_group" {
  description = "The name of the node group"
}

variable "node_count" {
  description = "The number of nodes in the specified node group"
  type        = number
}

variable "vm_size" {
  description = "The VM size for the node pool"
  default     = "Standard_B2s"
}

variable "tags" {
  description = "Tags to label the Azure resources"
  type        = map(string)
}


variable "tags" {
  description = "Tags to label Azure resources"
  type        = map(string)
}
