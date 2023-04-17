# Create Azure Storage account
resource "azurerm_storage_account" "storage_account" {
  name                     = lower("${var.resource_all_prefix}${var.resource_unique_id}")
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind             = var.storage_account_kind

  static_website {
    index_document     = var.static_website_index_document
    error_404_document = var.static_website_error_404_document
  }
}

resource "azurerm_storage_blob" "webload" {
  for_each = fileset(path.module, lower("../../${var.resource_all_prefix}${var.resource_unique_id}/**"))

  name                   = trimprefix(each.key, "../../marketingwebkey01/")
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = var.storage_container_name
  type                   = "Block"
  source                 = each.key
  content_type           = "text/html"
}