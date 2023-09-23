terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.73.0"
    }

  }
  backend "azurerm" {
    resource_group_name  = "remote_state"
    storage_account_name = "caioremotestates"
    container_name       = "remote-state"
    key                  = "azure-vnet/terraform.tfstate"

  }
}

provider "azurerm" {
  # Configuration options
  features {}
}



