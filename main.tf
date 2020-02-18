provider "azurerm" {
  subscription_id = ""
  tenant_id = ""
}

terraform {
  backend "azurerm" {
    resource_group_name   = "RG-Common-Resources" 
    storage_account_name  = "forterraformbackend"
    container_name        = "tfstate"
    access_key = "qXRMCmbVZuqd5OJm6Wk39MuYvlhnHdmgDABoQXppavuAzp2nzbvEc9I0dbrsQ2xiZH/njX/rjv30jrA7jCvgJQ=="
    key = "project.static.website.txt"
  }
}
