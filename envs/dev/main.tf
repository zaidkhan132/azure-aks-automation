terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform-Backend-Resource-Group"
    storage_account_name = "terraformstate"
    container_name       = "tfstate"
    key                  = "ilens-aks-dev-ilensinfra-tfstate"
  }
}

module "aks" {
  source              = "../../modules/aks"
  cluster_name        = var.cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  node_group          = var.node_group
  node_count          = var.node_count
  tags                = var.tags
  node_pools          = var.node_pools
}
