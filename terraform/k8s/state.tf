terraform {
  backend "azurerm" {
    storage_account_name = "patrickfxyz"
    container_name       = "patrickfxyz-terraform-state"
    key                  = "patrickfxyz.terraform.tfstate"
  }
}
