data "azurerm_management_group" "mg_root" {
  display_name = "Tenant Root Group"
}

module "mg" {
  source  = "claranet/management-group/azurerm"
  version = "x.x.x"

  client_name = var.client_name
  stack       = var.stack

  name_prefix = "ldz" # prefix example

  parent_management_group_id = data.azurerm_management_group.mg_root.id

  subscription_ids = [
    "00000000-0000-0000-0000-000000000000",
    "00000000-0000-0000-0000-000000000000",
  ]
}
