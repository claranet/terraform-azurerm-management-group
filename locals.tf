locals {
  name_prefix  = var.name_prefix != "" ? replace(var.name_prefix, "/[a-z0-9]$/", "$0-") : ""
  default_name = lower("${local.name_prefix}${var.stack}-${var.client_name}")

  mg_name = coalesce(var.custom_management_group_name, "${local.default_name}-mg")
}
