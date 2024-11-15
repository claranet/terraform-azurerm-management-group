output "name" {
  value       = azurerm_management_group.main.name
  description = "Management group name."
}

output "id" {
  value       = azurerm_management_group.main.id
  description = "Management group UID."
}

output "resource" {
  value       = azurerm_management_group.main
  description = "Management group resource object."
}

output "associated_subscriptions_uids" {
  value       = local.subscription_ids
  description = "Management group associated Subscriptions UIDs."
}
