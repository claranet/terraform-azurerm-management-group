data "azurerm_subscription" "current" {
}

resource "azurerm_management_group" "mgmt_group" {
  display_name               = local.mg_name
  parent_management_group_id = var.parent_management_group_id

  name     = var.management_group_internal_name
  group_id = var.management_group_uid

  subscription_ids = coalescelist(var.subscription_ids, [
    data.azurerm_subscription.current.subscription_id,
  ])
}
