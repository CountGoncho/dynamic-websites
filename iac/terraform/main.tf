# storage module
module "webstorage" {
  source = "./modules/storage"

  //for_each            = toset(["webkey01", "fdsafds", "dfhfd"])
  for_each            = toset(["webkey01"])
  resource_unique_id  = each.key
  resource_all_prefix = "marketing"
  //resource_web_base_path = "./public"
}

/*
# Create Azure Storage account
resource "azurerm_storage_account" "storage_account" {
  for_each                 = toset(var.storage_account_list)
  name                     = format("%s", each.value)
  resource_group_name      = local.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind             = var.storage_account_kind

  static_website {
    index_document     = var.static_website_index_document
    error_404_document = var.static_website_error_404_document
  }
}
*/
/*
resource "azurerm_storage_blob" "webload" {
  for_each = fileset(path.module, "public/**")

  name                   = trimprefix(each.key, "public/")
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = local.storage_container_name
  type                   = "Block"
  source                 = each.key
  content_type           = "text/html"
}
*/
