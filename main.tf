terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.52.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "fb0026c2-7fe4-4cb3-b079-da0bcab08ed0"
  tenant_id       = "55ef5309-3160-4a8a-8ad6-9222ee45f9fa"
  client_id       = "f4f8b016-7763-4340-8b5c-a15809b477c0"
  client_secret   = "lfU8Q~1b02WreEuIx3F2kC.IdxM6ExQSD.5FJbL1"
}

resource "azurerm_resource_group" "tf-rg2" {
  name = "tf-rg2"
  location = "east us"
}

resource "azurerm_storage_account" "sacc01" {
  name                     = "tfstorageaccount9909"
  resource_group_name      = azurerm_resource_group.tf-rg2.name
  location                 = azurerm_resource_group.tf-rg2.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
