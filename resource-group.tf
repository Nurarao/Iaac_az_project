resource "azurerm_resource_group" "demo_rg" {
  name     = "demo_rg"
  location = var.allowed_locations[0]
}