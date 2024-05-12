# create a virtual network

resource "azurerm_virtual_network" "primary" {
  name                = "primary"
  resource_group_name = azurerm_resource_group.group.name
  location            = azurerm_resource_group.group.location
  address_space       = var.primary_network_cidr

  subnet {
    name           = "web"
    address_prefix = "192.168.0.0/24"
  }

  subnet {
    name           = "db"
    address_prefix = "192.168.1.0/24"
  }
  depends_on = [azurerm_resource_group.group]
}