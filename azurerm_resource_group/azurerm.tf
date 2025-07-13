terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id = "cebec115-76a4-41a3-b52f-1485335c2232"
}

resource "azurerm_resource_group" "gauravvrg11" {
  name     = "gauravvrg22"
  location = "West Europe"
}

resource "azurerm_storage_account" "gauravsg11" {
  name                     = "gauravsg22"
  resource_group_name      = azurerm_resource_group.gauravvrg11.name
  location                 = azurerm_resource_group.gauravvrg11.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

