cluster_name         = "ilens-aks-dev"
resource_group_name  = "Demo-Resource"
location             = "East US"
node_group           = "ilens-infra"
node_count           = 2
tags = {
  Environment = "Dev"
}
node_pools = {
  pool1 = {
    vm_size    = "Standard_DS2_v2"
    node_count = 2
    mode       = "User"
    tags       = {
      team = "Development"
    }
  }
}
