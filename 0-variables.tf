variable "owner" {
  type = string
}

variable "location" {
  default = "West US"
}

variable "rg_name" {
  type = string
  default = "ykhemani-resource-group"
}

variable "cosmos_db_account_name" {
  type = string
  default = "ykhemani-cosmosdb-account"
}

variable "cosmosdb_offer_type" {
  type = string
  default = "Standard"
}

variable "cosmosdb_kind" {
  type = string
  default = "GlobalDocumentDB"
}