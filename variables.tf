variable "owner" {
  type        = string
}

variable se-region {
  type    = string
}

variable purpose {
  type    = string
  default = ""
}

variable ttl {
  type    = string
  default = "24"
}

variable tfe_hostname {
  type        = string
  description = "Terraform Enterprise endpoint."
  default     = "https://app.terraform.io"
}

variable org {
  type        = string
  description = "Name of organization where foundation_workspace exists."
}

variable foundation_workspace {
  type        = string
  description = "Name of Azure Foundation workspace where the resource group, vnet and subnet exist."
}

variable "failover_location" {
  type        = string
  default     = "East US"
}

variable "cosmos_db_account_name" {
  type        = string
  default     = "ykhemani-cosmosdb-account"
}

variable "cosmosdb_offer_type" {
  type        = string
  default     = "Standard"
}

variable "cosmosdb_kind" {
  type        = string
  default     = "GlobalDocumentDB"
}

variable "cosmosdb_name" {
  type        = string
  default     = "demo-db"
}

variable "cosmosdb_container" {
  type        = string
  default     = "demo-container"
}

variable "partition_key_path" {
  type        = string
  default     = "/DemoId"
}