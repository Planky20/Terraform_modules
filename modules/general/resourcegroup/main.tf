resource "azurerm_resource_group" "wlgroup" {
  name     = var.resource_group_name
  location = var.location
}
