resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = "East US"                # Static value
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.cluster_name}-dns"

  default_node_pool {
    name       = "default"
    node_count = 1                              # Static default node count
    vm_size    = "Standard_B2s"                # Static VM size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
    Owner       = "Team-Ilens"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
  name                  = var.node_group
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  node_count            = var.node_count
  vm_size               = "Standard_B2s"       # Static VM size
  mode                  = "User"
  tags = {
    Environment = "Development"
    Owner       = "Team-Ilens"
  }
}
