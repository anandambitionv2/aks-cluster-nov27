aks_clusters = {
  
   "aks_cluster_fluxcd-stapl" = {
    name                = "aks-cluster-fluxcd-stapl"
    location            = "centralindia"
    resource_group_name = "aks-rg"
    dns_prefix          = "aks-cluster-fluxcd-stapl"
    identity_type       = "SystemAssigned"
    workload_identity_enabled = true
    node_provisioning_profile = {
      mode = "Manual"
    }
    azure_active_directory_role_based_access_control = {

      azure_rbac_enabled = true
    }
    default_node_pool = {
      name            = "default"
      node_count      = 1
      vm_size         = "Standard_D2pls_v6"
      os_disk_size_gb = 30
      os_sku          = "Ubuntu"
      vnet_subnet_id  = "/subscriptions/228a46db-66c5-4a23-9ed7-677a552990bc/resourceGroups/test/providers/Microsoft.Network/virtualNetworks/aks-external-vnet/subnets/default"
      node_network_profile = {
        network_plugin      = "azure"
        network_policy      = "calico"
        network_plugin_mode = "overlay"
        pod_cidr            = "10.244.0.0/16"
      }
    }
  }
  
}

