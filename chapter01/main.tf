# October 11 2023
# Allan Peda <allan.peda@interpublic.com>

# For tenant and subscription, respectively
# az account show --query 'homeTenantId' -o tsv
# az account list -o table

# Client ID and secret created through Azure Portal
#   https://www.programonaut.com/how-to-easily-create-an-azure-service-principal-step-by-step/
# CLI instructions for secret below were NG
#   https://learn.microsoft.com/en-us/azure/developer/terraform/authenticate-to-azure?tabs=bash

# started with this (note version lock must be in required_providers)
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.75"
    }
  }
}

# be sure this is set/exported in your environment
# ARM_CLIENT_ID=aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
# ARM_CLIENT_SECRET=¯\_(ツ)_/¯_¯\_(ツ)_/¯_¯\_(ツ)_/¯_
# ARM_SUBSCRIPTION_ID=aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
# ARM_TENANT_ID=aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name = "opentofu_chapter01_rg"
  location = "eastus"
  tags = {
    creator = "allan.peda@interpublic.com"
    owner = "mark.clements@interpublic.com"
  }
}
