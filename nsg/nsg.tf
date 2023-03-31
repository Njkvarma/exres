resource "azurerm_network_security_group" "nsg1" {
  name                = var.nsg_name
  location            = var.nsglocation
  resource_group_name = var.nsg_rg
}
