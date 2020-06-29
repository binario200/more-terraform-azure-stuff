resource "azurerm_resource_group" "lab2" {
  name     = var.rg
  location = var.loc
  tags     = var.tags
}

resource "azurerm_storage_account" "lab2sa" {
  name                      = "${azurerm_resource_group.lab2.tags["source"]}binatflab2"
  resource_group_name       = azurerm_resource_group.lab2.name
  location                  = azurerm_resource_group.lab2.location
  tags                      = azurerm_resource_group.lab2.tags
  account_kind              = "StorageV2"
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  access_tier               = "Cool"
}