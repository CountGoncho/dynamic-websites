# POpulate the $web blobs with the static web content for each id
resource "azurerm_storage_blob" "webload" {
  for_each = fileset(path.module, "${var.website_unique_name}/**")

  name                   = trimprefix(each.key, "${var.website_unique_name}/")
  storage_account_name   = var.website_unique_name
  storage_container_name = var.web_container_name
  type                   = "Block"
  source                 = each.key
  content_type           = "text/html"
}
