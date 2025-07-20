terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 2.43.0"
    }
  }
}

provider "azuread" {
  use_cli = true
}

# provider "azuread" {
# tenant_id     = var.tenant_id
# client_id     = var.client_id
# client_secret = var.client_secret
#}
