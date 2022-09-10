terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.21.1"
    }
  }
}

provider "azurerm" {
  features {}

  
  backend "azurerm" {
    resource_group_name  = "tf-state"
    storage_account_name = "alhigaz2019gmail2tfstate"
    container_name       = "state-tf"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "demo" {
  name     = "demo"
  location = "East US 2"
}
