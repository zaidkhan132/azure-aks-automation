cluster_name         = "ilens-aks-dev"
resource_group_name  = "Demo-Resource"
location             = "East US"
tags = {
  Environment = "dev"
}

infra_pool_count     = 2
core_pool_count      = 3
