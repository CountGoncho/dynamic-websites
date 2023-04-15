resource "random_string" "uniquer" {
  length  = 5
  special = false
  number  = true
  lower   = false
  upper   = false
}

locals {
  uniquer             = var.uniquer != null ? var.uniquer : "${random_string.uniquer.id}"
  resources_prefix    = var.resources_prefix != null ? var.resources_prefix : "${local._default.name_prefix}${local.uniquer}"
  location            = var.location
  resource_group_name = "${local.resource_group}Rg"
  key_vault_name                            = "${local.resources_prefix}kv"
  user_assigned_identity_name               = "${local.resources_prefix}uami"
 }
