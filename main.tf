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
}

terraform {
  cloud {
    organization = "alhigaz2022"

    workspaces {
      name = "azure-infra-tf-01"
    }
  }
}
