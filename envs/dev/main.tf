provider "azurerm" {
  features {}
}

module "aks" {
  source = "../../modules/aks"

  cluster_name        = "dev-aks-cluster"
  resource_group_name = "dev-resource-group"
  node_group          = "dev-node-group"
  node_count          = 2
}

