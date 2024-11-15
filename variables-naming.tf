variable "name_prefix" {
  description = "Optional prefix for the generated name."
  type        = string
  default     = ""
}

variable "custom_name" {
  description = "Optional custom management group display name."
  type        = string
  default     = ""
}

variable "internal_name" {
  description = "The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
