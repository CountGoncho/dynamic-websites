variable "resource_unique_id" {
  description = "(required) resource unique identifier"
  type        = string
  default     = null
}

variable "resource_all_prefix" {
  description = "prefix for resources"
  type        = string
  default     = null
}

variable "location" {
  description = ""
  type        = string
  default     = "uk south"
}

variable "resource_group_name" {
  description = ""
  type        = string
  default     = "marketingwebrg"
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

variable "storage_account_list" {
  description = "The base names of the storage account"
  type        = list(any)
  default     = ["marketing3de4k", "marketingg35tgw", "marketing3kdj2"]
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

variable "static_website_index_document" {
  description = "static website index document"
  type        = string
  default     = "index.html"
}

variable "static_website_error_404_document" {
  description = "static website error 404 document"
  type        = string
  default     = "error.html"
}

variable "static_website_source_folder" {
  description = "static website source folder"
  type        = string
  default     = "web"
}

variable "storage_container_name" {
  description = "static website source folder"
  type        = string
  default     = "$web"
}
