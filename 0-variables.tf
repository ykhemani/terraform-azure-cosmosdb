variable "owner" {
  type    = string
}

variable "location" {
  type    = string
  default = "West US"
}

variable "failover_location" {
  type    = string
  default = "East US"
}

variable "rg_name" {
  type    = string
  default = "ykhemani-resource-group"
}

variable "cosmos_db_account_name" {
  type    = string
  default = "ykhemani-cosmosdb-account"
}

variable "cosmosdb_offer_type" {
  type    = string
  default = "Standard"
}

variable "cosmosdb_kind" {
  type    = string
  default = "GlobalDocumentDB"
}

variable "cosmosdb_name" {
  type    = string
  default = "demo-db"
}

variable "cosmosdb_container" {
  type    = string
  default = "demo-container"
}

variable "partition_key_path" {
  type    = string
  default = "/DemoId"
}