data "azurerm_subscription" "current" {
}

resource "azurerm_management_group" "mgmt_group" {
  display_name               = local.mg_name
  parent_management_group_id = var.parent_management_group_id

  name = var.management_group_internal_name

  subscription_ids = var.subscription_ids == null ? null : coalescelist(var.subscription_ids, [
    data.azurerm_subscription.current.subscription_id,
  ])
}
