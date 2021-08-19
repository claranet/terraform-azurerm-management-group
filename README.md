# Azure Management Group
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/claranet/management-group/azurerm/)

Azure terraform module to create a Management Group with associated Azure Subscriptions.

## Version compatibility

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 5.x.x       | 0.15.x & 1.0.x    | >= 2.0          |
| >= 4.x.x       | 0.13.x            | >= 2.0          |
| >= 3.x.x       | 0.12.x            | >= 2.0          |
| >= 2.x.x       | 0.12.x            | < 2.0           |
| <  2.x.x       | 0.11.x            | < 2.0           |

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

```hcl
module "mg" {
  source  = "claranet/management-group/azurerm"
  version = "x.x.x"

  client_name = var.client_name
  stack       = var.stack

  name_prefix = "ldz" # prefix example

  subscription_ids = [
    "00000000-0000-0000-0000-000000000000",
    "00000000-0000-0000-0000-000000000000",
  ]
}
```

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.60 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mgmt_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group) | resource |
| [azurerm_management_group_subscription_association.mg-sub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_subscription_association) | resource |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |
| [azurerm_subscription.sub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| client\_name | Client name/account used in naming | `string` | n/a | yes |
| custom\_management\_group\_name | Optional custom management group display name | `string` | `""` | no |
| management\_group\_internal\_name | The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created. | `string` | `null` | no |
| name\_prefix | Optional prefix for the generated name | `string` | `""` | no |
| parent\_management\_group\_id | The ID of the Parent Management Group. Changing this forces a new resource to be created. | `string` | `null` | no |
| stack | Project stack name | `string` | n/a | yes |
| subscription\_ids | A list of Subscription GUIDs which should be assigned to the Management Group. Use the current Subscription by default if this variable is not overridden. | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| management\_group\_id | Management group UID |
| management\_group\_name | Management group name |
<!-- END_TF_DOCS -->
## Related documentation

Terraform Azure Management Group documentation: [registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group)
