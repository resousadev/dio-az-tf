terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
    
    required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
  
}

resource "azurerm_resource_group" "rg" {
  name     = "lab_dio_azure"
  location = var.location
}

resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = var.sql_server_version
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password

  public_network_access_enabled = true
  minimum_tls_version = "1.2"
}

