provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "tf_rg" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_virtual_network" "tf_vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.tf_rg.location
  resource_group_name = azurerm_resource_group.tf_rg.name
  address_space       = var.vnet_address_space
}

resource "azurerm_subnet" "tf_subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.tf_rg.name
  virtual_network_name = azurerm_virtual_network.tf_vnet.name
  address_prefixes     = var.subnet_address_prefix
}