terraform {
#   cloud {
#     organization = "tf-cloud-demo-2"

#     workspaces {
#       name = "tfc-workspace"
#     }
#   }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.83.0"
    }
  }
}


