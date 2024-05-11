terraform {
  # provider version requirements
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.100.0"
    }
  }
  # terraform version requirements
  required_version = "~> 1.8.0"
}

# azurerm provider - uses cli authentication
provider "azurerm" {
  features {

  }
}

