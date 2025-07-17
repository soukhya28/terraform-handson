resource "azurerm_resource_group" "terrahandson" {
    name     = "terrahandson-resources"
    location = "East US"
}
resource "azurerm_resource_group" "terrahandsonexercise" {
    name     = "terrahandsonexercise-resources"
    location = "East US"
}