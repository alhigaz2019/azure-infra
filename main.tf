terraform {
   cloud {
      organization :"alhigaz2022"
      workspaces {
      name = "azure-infra"
    }
  }
}

required_providers {
   azurerm = {
     source = "hashicorp/azurerm"
     version = "~>3.0"
   }
 }

provider "azurem" {
  featurs {}

  subscription_id = var.subscriptionID
  client_id       = var.clientID
  client_secret   = var.clientSecret
  tenant_id       = var.tenantID
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "East US 2"
}
resource "azurerm_resource_group" "devops" {
  name     = "devops"
  location = "East US 2"
}

variable "subscriptionID" {
  type = string
}

 variable "clientID" {
  type = string
}

 variable "clientSecret" {
  type = string
 }

 variable "tenantID" {
  type = string
 }
