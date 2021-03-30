terraform {
  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
    }
  }
  required_version          = ">= 0.13"
}

provider "azurerm" {
  features {}
}

data terraform_remote_state foundation {
  backend = "remote"
  config  = {
    hostname     = var.tfe_hostname
    organization = var.org
    workspaces   = {
      name       = var.foundation_workspace
    }
  }
}

resource "azurerm_cosmosdb_account" "account" {
  name                      = var.cosmos_db_account_name
  location                  = data.terraform_remote_state.foundation.outputs.rg_location
  resource_group_name       = data.terraform_remote_state.foundation.outputs.rg_name
  offer_type                = var.cosmosdb_offer_type
  kind                      = var.cosmosdb_kind

  enable_automatic_failover = true

  tags = {
    owner                   = var.owner
    se-region               = var.se-region
    purpose                 = var.purpose
    ttl                     = var.ttl
    terraform               = "true"
  }

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 10
    max_staleness_prefix    = 200
  }

  geo_location {
    location                = data.terraform_remote_state.foundation.outputs.rg_location
    failover_priority       = 0
  }

}

resource "azurerm_cosmosdb_sql_database" "demodb" {
  name                      = var.cosmosdb_name
  resource_group_name       = azurerm_cosmosdb_account.account.resource_group_name
  account_name              = azurerm_cosmosdb_account.account.name
}

resource "azurerm_cosmosdb_sql_container" "democollection" {
  name                     = var.cosmosdb_container
  resource_group_name      = azurerm_cosmosdb_account.account.resource_group_name
  account_name             = azurerm_cosmosdb_account.account.name
  database_name            = azurerm_cosmosdb_sql_database.demodb.name
  partition_key_path       = var.partition_key_path
}
