# declare a resource group
resource "azurerm_resource_group" "group" {
  name     = "learning"
  location = "centralindia"
  tags = {
    Environment = "Dev"
    CreatedBy   = "Terraform"
  }
}

# declare a stroage account
resource "azurerm_storage_account" "store" {
  name                     = "qtstoremay92024"
  resource_group_name      = "learning"
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    Environment = "Dev"
    CreatedBy   = "Terraform"
  }
}