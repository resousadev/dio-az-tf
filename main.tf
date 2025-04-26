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
