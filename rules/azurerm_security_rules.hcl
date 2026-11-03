# ==============================================================================
# Enterprise Azure Security Rules (Pure HCL)
# ==============================================================================

# Enforce secure TLS 1.2 on all Azure Storage Accounts
rule "azurerm_storage_account_min_tls_version" {
  enabled = true
}

# Ensure Virtual Machines have standard OS disk caching and secure configuration
rule "azurerm_linux_virtual_machine_sizes" {
  enabled = true
}

# Ensure Key Vault soft delete is enabled
rule "azurerm_key_vault_soft_delete" {
  enabled = true
}
