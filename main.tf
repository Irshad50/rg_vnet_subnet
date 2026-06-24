resource "azurerm_resource_group" "rg_golu" {
  for_each = var.rg-gola

  name     = each.value.name
  location = each.value.location
}

resource "azurerm_virtual_network" "aqsa_vnets" {
  for_each = var.vnets

  name                = each.value.name
  location            = each.value.location

  resource_group_name = azurerm_resource_group.rg_golu[each.value.resource_group_key].name

  address_space       = each.value.address_space
}

resource "azurerm_subnet" "subnet" {
  for_each = var.subnets

  name = each.value.name

  virtual_network_name = azurerm_virtual_network.aqsa_vnets[each.value.virtual_network_key].name

  resource_group_name  = azurerm_resource_group.rg_golu[each.value.resource_group_key].name

  address_prefixes = each.value.address_prefixes
}