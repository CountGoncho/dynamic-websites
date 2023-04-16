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
  default     = null
}

variable "storage_account_tier" {
  description = "Storage Account Tier"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "Storage Account Replication Type"
  type        = string
  default     = "LRS"   
}

variable "storage_account_kind" {
  description = "Storage Account Kind"
  type        = string
  default     = "StorageV2"   
}
