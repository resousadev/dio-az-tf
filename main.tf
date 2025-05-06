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

resource "azurerm_mssql_database" "sql_database" {
  name                = var.sql_database_name
  server_id = azurerm_mssql_server.sql_server.id
  sku_name  = "GP_Gen5_2"
  max_size_gb = 5
  collation   = "SQL_Latin1_General_CP1_CI_AS"
}

resource "azurerm_storage_account" "s_a" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "s_c" {
  name                  = "lab-container-fotos"
  storage_account_id    = azurerm_storage_account.s_a.id
  container_access_type = "private"
}

