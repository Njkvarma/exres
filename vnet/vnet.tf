resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.rg_loc
  resource_group_name = var.rg_name
  address_space       = var.vnet_address_space
  dns_servers         = var.dns_servers

  subnet {
    name           = var.subnet1_name
    address_prefix = var.subnet1_address
  }

  subnet {
    name           = var.subnet2_name
    address_prefix = var.subnet2_address
    security_group = var.sg_id
  }

  tags = {
    environment = var.vnet_tag
  }
}