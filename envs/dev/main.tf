provider "azurerm" {
  features {}
}
 
module "aks" {
  source              = "../../modules/aks"
  cluster_name        = "ilens-aks-dev"
  location            = "East US"
  resource_group_name = "ilens-rg-dev"
  default_nodepool_count = 1
  infra_nodepool_count   = 2
  tags = {
    environment = "dev"
    owner       = "team-ilens"
  }
}