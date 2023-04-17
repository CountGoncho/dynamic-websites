variable "location" {
  description = ""
  type        = string
  default     = "uk south"
}

variable "resource_group" {
  description = ""
  type        = string
  default     = "marketingweb"
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

variable "website_unique_ids" {
  description = "The varying unique ids of the websites "
  type        = list(any)
  default     = ["webkey01", "website02", "website03"]
}
