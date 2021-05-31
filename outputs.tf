output "management_group_name" {
  value       = azurerm_management_group.mgmt_group.name
  description = "Management group name"
}

output "management_group_id" {
  value       = azurerm_management_group.mgmt_group.id
  description = "Management group UID"
}
