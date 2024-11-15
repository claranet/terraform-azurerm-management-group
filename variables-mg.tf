variable "parent_management_group_id" {
  description = "The ID of the Parent Management Group. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "subscription_ids" {
  description = "A list of Subscription GUIDs which should be assigned to the Management Group. Use the current Subscription by default if this variable is not overridden."
  type        = list(string)
  default     = null
}
