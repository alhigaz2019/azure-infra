terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurem = {
      source = "hashicop/azurem"
      version = ">= 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "state-tf"
    storage_account_name = "alhigaz2019gmail2tfstate"
    container_name       = "tf-state"
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
