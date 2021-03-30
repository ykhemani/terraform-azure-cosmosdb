output cosmosdb_account_name {
  value = azurerm_cosmosdb_account.account.name
}

output cosmosdb_connection_strings {
  value = azurerm_cosmosdb_account.account.connection_strings
}

output cosmosdb_endpoint {
  value = azurerm_cosmosdb_account.account.endpoint
}

output cosmosdb_read_endpoints {
  value = azurerm_cosmosdb_account.account.read_endpoints
}

output cosmosdb_write_endpoints {
  value = azurerm_cosmosdb_account.account.write_endpoints
}

output cosmosdb_primary_key {
  value = azurerm_cosmosdb_account.account.primary_key
}

output cosmosdb_primary_master_key {
  value = azurerm_cosmosdb_account.account.primary_master_key
}

output cosmosdb_primary_readonly_key {
  value = azurerm_cosmosdb_account.account.primary_readonly_key
}

output cosmosdb_primary_readonly_master_key {
  value = azurerm_cosmosdb_account.account.primary_readonly_master_key
}

output cosmosdb_secondary_key {
  value = azurerm_cosmosdb_account.account.secondary_key
}

output cosmosdb_secondary_master_key {
  value = azurerm_cosmosdb_account.account.secondary_master_key
}

output cosmosdb_secondary_readonly_key {
  value = azurerm_cosmosdb_account.account.secondary_readonly_key
}

output cosmosdb_secondary_readonly_master_key {
  value = azurerm_cosmosdb_account.account.secondary_readonly_master_key
}
