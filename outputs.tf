output "resource_group_name" {
  description = "Resource group name"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_id" {
  description = "Resource group id"
  value       = azurerm_resource_group.rg.id
}

output "resource_group_location" {
  description = "Resource group region"
  value       = azurerm_resource_group.rg.location
}
