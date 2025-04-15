variable "cluster_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "default_nodepool_name" { default = "ilenscore" }
variable "default_nodepool_count" { default = 1 }
variable "infra_nodepool_count" { default = 2 }
variable "vm_size" { default = "Standard_DS2_v2" }
variable "tags" { type = map(string) }