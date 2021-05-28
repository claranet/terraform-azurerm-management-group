data "azurerm_subscription" "current" {
}

resource "azurerm_management_group" "mgmt_group" {
  display_name               = local.mg_name
  parent_management_group_id = var.parent_management_group_id

  name = var.management_group_internal_name
}

resource "azurerm_management_group_subscription_association" "mg-sub" {
  for_each = toset(local.subscription_ids)

  management_group_id = azurerm_management_group.mgmt_group.id
  subscription_id     = each.key
}
