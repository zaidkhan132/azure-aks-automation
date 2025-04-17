cluster_name         = "dev-aks-cluster"
resource_group_name  = "dev-resource-group"
location             = "East US"
tags                 = { "Environment" = "Dev" }
node_group           = "default"
node_count           = 2
node_pools = {
  pool1 = {
    vm_size    = "Standard_DS2_v2"
    node_count = 2
    mode       = "User"
    tags       = { "Team" = "DevOps" }
  }
}
