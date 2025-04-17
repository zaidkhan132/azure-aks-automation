provider "azurerm" {
  features {}
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags

  default_node_pool {
    name       = var.node_group
    node_count = var.node_count
    vm_size    = var.node_pools[var.node_group].vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "additional" {
  for_each = var.node_pools

  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  name                  = each.key
  node_count            = each.value.node_count
  vm_size               = each.value.vm_size
  mode                  = each.value.mode
  tags                  = each.value.tags
}
