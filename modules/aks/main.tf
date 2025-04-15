resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = "East US"
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.cluster_name}-dns"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
    Owner       = "Team-Ilens"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "custom_pool" {
  name                  = var.node_group
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = "Standard_B2s"
  node_count            = var.node_count
  mode                  = "User"
  node_labels           = { "purpose" = "custom" }
  tags = {
    Environment = "Development"
    Owner       = "Team-Ilens"
  }
}


 
