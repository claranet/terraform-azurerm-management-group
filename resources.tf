data "azurerm_subscription" "current" {
}

resource "azurerm_management_group" "mgmt_group" {
  display_name               = local.mg_name
  parent_management_group_id = var.parent_management_group_id

  name = var.management_group_internal_name
}

data "azurerm_subscription" "sub" {
  for_each = toset(local.subscription_ids)

  subscription_id = each.key
}

resource "azurerm_management_group_subscription_association" "mg_sub" {
  for_each = toset(local.subscription_ids)

  management_group_id = azurerm_management_group.mgmt_group.id
  subscription_id     = data.azurerm_subscription.sub[each.key].id
}
