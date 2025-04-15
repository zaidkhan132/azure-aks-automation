resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.cluster_name}-dns"
 
  default_node_pool {
    name       = var.default_nodepool_name
    node_count = var.default_nodepool_count
    vm_size    = var.vm_size
  }
 
  identity {
    type = "SystemAssigned"
  }
 
  tags = var.tags
}
 
resource "azurerm_kubernetes_cluster_node_pool" "infra_pool" {
  name                  = "ilensinfra"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = var.vm_size
  node_count            = var.infra_nodepool_count
  mode                  = "User"
  node_labels           = { "purpose" = "infra" }
  tags                  = var.tags
}
 