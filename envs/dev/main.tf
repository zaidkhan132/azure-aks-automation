terraform {
  backend "azurerm" {
    resource_group_name  = "Demo-Resource"
    storage_account_name = "zaid01storageaccount"
    container_name       = "zaidcontainer"
    key                  = "${var.cluster_name}-tfstate"
  }
}


module "aks" {
  source              = "../../modules/aks"
  cluster_name        = var.cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
  node_group          = var.node_group
  node_count          = var.node_count
  node_pools          = var.node_pools
  infra_pool_count    = var.infra_pool_count
  core_pool_count     = var.core_pool_count
}


