variable "cluster_name" {
  description = "The name of the AKS cluster"
}

variable "location" {
  description = "The Azure region where the cluster is deployed"
}

variable "resource_group_name" {
  description = "The name of the resource group for the AKS cluster"
}

variable "default_nodepool_name" {
  description = "Name of the default node pool"
  default     = "default"
}

variable "default_nodepool_count" {
  description = "Number of nodes in the default node pool"
  default     = 2
}

variable "node_group" {
  description = "Name of the node group"
}

variable "node_count" {
  description = "Number of nodes in the specified node group"
  default     = 2
}

variable "node_group_label" {
  description = "Label for the node group"
  default     = "custom-group"
}

variable "vm_size" {
  description = "Size of the VM used in the node pool"
  default     = "Standard_DS2_v2"
}

variable "tags" {
  description = "Tags to label Azure resources"
  type        = map(string)
}
