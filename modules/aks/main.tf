resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags

  default_node_pool {
    name       = var.node_group
    node_count = var.node_count
    vm_size    = "Standard_DS2_v2"
    mode       = "System"                    # Required for default node pools
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "infra_pool" {
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  name                  = "infra_pool"
  node_count            = var.infra_pool_count
  vm_size               = "Standard_DS2_v2"
  mode                  = "User"             # Node pool type (User/System)
  tags                  = var.tags
}

resource "azurerm_kubernetes_cluster_node_pool" "core_pool" {
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  name                  = "core_pool"
  node_count            = var.core_pool_count
  vm_size               = "Standard_DS2_v2"
  mode                  = "User"             # Node pool type (User/System)
  tags                  = var.tags
}
