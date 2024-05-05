resource "azurerm_resource_group" "rg" {
  name     = lower(var.resource_group_name)
  location = var.location
  tags     = var.tags
}

resource "azurerm_management_lock" "rg_lock" {
  count = var.lock_level == "" ? 0 : 1

  name       = "${azurerm_resource_group.rg.name}-lock"
  scope      = azurerm_resource_group.rg.id
  lock_level = var.lock_level
  notes      = "Resource group is locked with '${var.lock_level}' level."
}
