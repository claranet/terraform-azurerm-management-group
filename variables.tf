variable "client_name" {
  description = "Client name/account used in naming"
  type        = string
}

variable "stack" {
  description = "Project stack name"
  type        = string
}

variable "name_prefix" {
  description = "Optional prefix for the generated name"
  type        = string
  default     = ""
}

variable "custom_management_group_name" {
  description = "Optional custom management group display name"
  type        = string
  default     = ""
}

variable "management_group_internal_name" {
  description = "The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "management_group_uid" {
  description = "The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "parent_management_group_id" {
  description = "The ID of the Parent Management Group. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "subscription_ids" {
  description = "A list of Subscription GUIDs which should be assigned to the Management Group."
  type        = list(string)
  default     = []
}