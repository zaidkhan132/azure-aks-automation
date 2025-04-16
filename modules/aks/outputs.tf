output "kube_admin_config" {
  description = "Admin kubeconfig for the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config_raw
  sensitive   = true
}

output "aks_name" {
  description = "Name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "node_pools" {
  description = "Node pools created in the AKS cluster"
  value       = azurerm_kubernetes_cluster_node_pool.node_pool
}
