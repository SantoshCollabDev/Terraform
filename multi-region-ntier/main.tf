# create a resoruce group

resource "azurerm_resource_group" "group" {
  name     = "ntier"
  location = "eastus"
  tags = {
    Environment = "Dev"
    CretedBy    = "Terraform"
  }
}