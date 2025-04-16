provider "azurerm" {
  features {}
}

module "aks" {
  source              = "../../modules/aks"
  cluster_name        = "dev-aks-cluster"
  resource_group_name = "dev-resource-group"
  location            = "East US"
  tags = {
    Environment = "Development"
    Owner       = "Team-Dev"
  }

  node_pools = {
    default = {
      vm_size    = "Standard_B2s"
      node_count = 2
      mode       = "System"
      tags       = {
        Environment = "Development"
        Owner       = "Team-Dev"
      }
    }
    infra = {
      vm_size    = "Standard_D4s_v3"
      node_count = 3
      mode       = "User"
      tags       = {
        Environment = "Development"
        Owner       = "Infrastructure"
      }
    }
    apps = {
      vm_size    = "Standard_DS3_v2"
      node_count = 1
      mode       = "User"
      tags       = {
        Environment = "Development"
        Owner       = "Applications"
      }
    }
  }
}
