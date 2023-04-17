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

variable "web_container_name" {
  description = "static website source folder"
  type        = string
  default     = "$web"
}

variable "files_source_path" {
  description = "(required) file path where the web content files reside"
  type        = string
  default     = null
}
// not needed
variable "files_source_path_search" {
  description = "(required) search path to build list"
  type        = string
  default     = null
}