terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.90.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  # Configuration options
  subscription_id = "f7dfb96d-4887-4b5b-83f2-8f962354b4a0"
}
