locals {
  name_prefix  = var.name_prefix != "" ? replace(var.name_prefix, "/[a-z0-9]$/", "$0-") : ""
  default_name = lower("${local.name_prefix}${var.stack}-${var.client_name}")

  mg_name = coalesce(var.custom_management_group_name, "${local.default_name}-mg")

  subscription_ids = var.subscription_ids == null ? [data.azurerm_subscription.current.subscription_id] : var.subscription_ids
}
