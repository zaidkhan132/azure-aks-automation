cluster_name         = "ilens-aks-dev"
resource_group_name  = "Demo-Resource"
location             = "East US"
tags = {
  Environment = "Dev"
}
dns_prefix = "ilens-aks-dev"  # Example DNS prefix

node_group           = "ilensinfra"
node_count           = 2

node_pools = {
  pool1 = {
    vm_size    = "Standard_DS2_v2"
    node_count = 2
    mode       = "User"
    tags       = {
      Team = "Development"
    }
  }
}

infra_pool_count     = 2
core_pool_count      = 1
