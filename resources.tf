resource "azurerm_resource_group" "fanfan" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "fanfan" {
  name                      = local.storage_account_name
  resource_group_name       = azurerm_resource_group.fanfan.name
  location                  = azurerm_resource_group.fanfan.location
  account_kind              = "StorageV2"
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  enable_https_traffic_only = true

  provisioner "local-exec" {
    command = "az storage blob service-properties update --account-name ${azurerm_storage_account.fanfan.name} --static-website  --index-document index.html --404-document 404.html"
  }
}

