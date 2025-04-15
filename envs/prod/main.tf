provider "azurerm" {
  features {}
}
 
module "aks" {
  source              = "../../modules/aks"
  cluster_name        = "ilens-aks-prod"
  location            = "East US"
  resource_group_name = "ilens-rg-prod"
  default_nodepool_count = 1
  infra_nodepool_count   = 2
  tags = {
    environment = "prod"
    owner       = "team-ilens"
  }
}