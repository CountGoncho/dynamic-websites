# Create Azure Storage account
resource "azurerm_storage_account" "storage_account" {
  name                = "${local.resources_prefix}sa"
  resource_group_name = local.resource_group_name

  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind             = var.storage_account_kind

  static_website {
    index_document     = var.static_website_index_document
    error_404_document = var.static_website_error_404_document
  }
}
