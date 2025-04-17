output "kubernetes_cluster_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

output "infra_pool_name" {
  value = azurerm_kubernetes_cluster_node_pool.infra_pool.name
}

output "core_pool_name" {
  value = azurerm_kubernetes_cluster_node_pool.core_pool.name
}

