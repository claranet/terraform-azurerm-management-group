resource "azurerm_management_group" "main" {
  display_name               = local.name
  parent_management_group_id = var.parent_management_group_id

  name = var.internal_name
}

moved {
  from = azurerm_management_group.mgmt_group
  to   = azurerm_management_group.main
}

resource "azurerm_management_group_subscription_association" "main" {
  for_each = toset(local.subscription_ids)

  management_group_id = azurerm_management_group.main.id
  subscription_id     = data.azurerm_subscription.main[each.key].id
}

moved {
  from = azurerm_management_group_subscription_association.mg_sub
  to   = azurerm_management_group_subscription_association.main
}
