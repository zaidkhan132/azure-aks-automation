cluster_name         = "ilens-aks-dev"
resource_group_name  = "Demo-Resource"
location             = "East US"
tags = {
  Environment = "Dev"
}

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
