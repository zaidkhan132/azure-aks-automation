terraform {
  backend "azurerm" {
    resource_group_name  = "Demo-Resource"
    storage_account_name = "zaid01storageaccount"
    container_name       = "zaidcontainer"
    key                  = "ilens-aks-dev-tfstate"
  }
}

