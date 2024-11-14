data "azurerm_subscription" "current" {}

data "azurerm_subscription" "main" {
  for_each = toset(local.subscription_ids)

  subscription_id = each.key
}
