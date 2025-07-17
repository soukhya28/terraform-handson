resource "azurerm_resource_group" "terrahandson" {
    name     = "terrahandson-resources"
    location = "East US"
}
resource "azurerm_resource_group" "terrahandsonexercise" {
    name     = "terrahandsonexercise-resources"
    location = "East US"
}
resource "azurerm_storage_account" "soterra" {
    name                     = "terrastoragesored286"
    resource_group_name      = azurerm_resource_group.terrahandson.name
    location                 = azurerm_resource_group.terrahandson.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
resource "azurerm_storage_container" "socontainer" {
    name                  = "terrahandson-container"
    storage_account_name  = azurerm_storage_account.soterra.name
    container_access_type = "private"
}