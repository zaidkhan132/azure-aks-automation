resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
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
    Environment = var.environment
    Owner       = var.owner
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
  name                  = var.node_group
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  node_count            = var.node_count
  vm_size               = "Standard_B2s"
  mode                  = "User"
  node_labels           = { "purpose" = var.node_group_label }
  tags = {
    Environment = var.environment
    Owner       = var.owner
  }
}
