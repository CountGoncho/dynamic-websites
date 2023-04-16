variable "location" {
  description = ""
  type        = string
  default     = "uk south"
}

variable "resource_group" {
  description = ""
  type        = string
  default     = "Marketing"
}

variable "uniquer" {
  description = ""
  type        = string
  default     = null
}

variable "resources_prefix" {
  description = ""
  type        = string
  default     = null
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string   
}

variable "storage_account_tier" {
  description = "Storage Account Tier"
  type        = string   
}
