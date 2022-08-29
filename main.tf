terraform {
  required_providers {
    azurem = {
      source = "hashicop/azurem"
      version = "3.10.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tf-state"
    storage_account_name = "alhigaz2019gmail2tfstate"
    container_name       = "state-tf"
    key                  = "terraform.tfstate"
  }
}

provider "azurem" {
  featurs {}

} 
resource "azurerm_resource_group" "demo" {
  name     = "demo"
  location = "East US 2"
}
