resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = var.dns_prefix
  tags                = var.tags

  identity {
    type = "SystemAssigned"
  }
}

# Infrastructure Node Pool
resource "azurerm_kubernetes_cluster_node_pool" "infra_pool" {
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  name                  = "infrapool"
  node_count            = var.infra_pool_count
  vm_size               = "Standard_DS2_v2"
  mode                  = "User"
  tags                  = var.tags
}

# Core Node Pool
resource "azurerm_kubernetes_cluster_node_pool" "core_pool" {
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  name                  = "corepool"
  node_count            = var.core_pool_count
  vm_size               = "Standard_DS2_v2"
  mode                  = "User"
  tags                  = var.tags
}

