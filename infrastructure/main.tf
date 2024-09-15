# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.77.0"  # Mantive a versão que você estava usando
    }
  }
  backend "azurerm" {}  # Mantive o backend que você estava usando
  required_version = ">= 1.0.0"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  # Você pode adicionar o resource_provider_registrations se necessário
  # resource_provider_registrations = "none"
}

# Mantive os data sources que você estava usando
data "azurerm_client_config" "current" {}

data "http" "ip" {
  url = "https://ifconfig.me"
}

# Aqui você pode adicionar seus recursos, como no exemplo da documentação:
# resource "azurerm_resource_group" "example" {
#   name     = "example-resources"
#   location = "Brazil South"  # Ajustado para a localização que você mencionou
# }

# resource "azurerm_virtual_network" "example" {
#   name                = "example-network"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   address_space       = ["10.0.0.0/16"]
# }