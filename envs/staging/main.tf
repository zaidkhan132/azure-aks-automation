provider "azurerm" {
  features {}
}
 
module "aks" {
  source              = "../../modules/aks"
  cluster_name        = "ilens-aks-staging"
  location            = "East US"
  resource_group_name = "ilens-rg-staging"
  default_nodepool_count = 1
  infra_nodepool_count   = 2
  tags = {
    environment = "staging"
    owner       = "team-ilens"
  }
}