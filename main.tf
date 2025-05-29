provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "DevOpsAI-RG"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "DevOpsAI-AKS"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "devopsai"

  default_node_pool {
    name       = "agentpool"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "DevOps-AI"
  }
}

resource "azurerm_container_registry" "acr" {
  name                = "devopsaiacr123"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true

  tags = {
    environment = "DevOps-AI"
  }
}
