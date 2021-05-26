# Azure Management Group
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/modules/claranet/management-group/azurerm/)

Azure terraform module to create a Management Group with associated Azure Subscriptions.

## Version compatibility

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
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
}
```

## Providers

| Name    | Version |
| ------- | ------- |
| azurerm | >= 2.60 |

## Inputs

| Name                              | Description                                                                                                                                                                               | Type           | Default | Required |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ------- | :------: |
| client\_name                      | Client name/account used in naming                                                                                                                                                        | `string`       | n/a     |   yes    |
| custom\_management\_group\_name   | Optional custom management group display name                                                                                                                                             | `string`       | `""`    |    no    |
| management\_group\_internal\_name | The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created. | `string`       | `null`  |    no    |
| management\_group\_uid            | The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created. | `string`       | `null`  |    no    |
| name\_prefix                      | Optional prefix for the generated name                                                                                                                                                    | `string`       | `""`    |    no    |
| parent\_management\_group\_id     | The ID of the Parent Management Group. Changing this forces a new resource to be created.                                                                                                 | `string`       | `null`  |    no    |
| stack                             | Project stack name                                                                                                                                                                        | `string`       | n/a     |   yes    |
| subscription\_ids                 | A list of Subscription GUIDs which should be assigned to the Management Group.                                                                                                            | `list(string)` | `[]`    |    no    |

## Outputs

| Name                    | Description           |
| ----------------------- | --------------------- |
| management\_group\_name | Management group name |
| resource\_group\_id     | Management group UID  |

## Related documentation

Terraform Azure Management Group documentation: [registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group)
