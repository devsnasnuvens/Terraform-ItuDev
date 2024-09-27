terraform {
    required_providers {
      source = "hashicorp/azurerm"
      azurerm = ">= 3.116.0"
    }
}

provider "azurerm" {
    features {}
}