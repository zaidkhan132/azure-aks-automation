# envs/dev/main.tf

provider "azurerm" {
  features {}
}

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

module "aks" {
  source              = "../../modules/aks"
  cluster_name        = var.cluster_name
  resource_group_name = var.resource_group_name
  node_group          = var.node_group
  node_count          = var.node_count
}

