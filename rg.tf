resource "azurerm_resource_group" "rgs" {
  for_each = var.rgnames
  name = each.key
  location = each.value
}


resource "azurerm_resource_group" "rgs1" {
  for_each = toset(["singhad4", "singhad5", "singhad6"])
  name = each.key
  location = "eastus"
}
