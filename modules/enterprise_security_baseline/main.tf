# ==============================================================================
# Enterprise Security Baseline Checks (100% Pure HCL)
# Uses Terraform native check and assert blocks - zero shell scripts required
# ==============================================================================

# Guardrail 1: Enforce TLS 1.2 on all storage accounts
check "enforce_storage_tls_1_2" {
  assert {
    condition = alltrue([
      for sa in var.storage_accounts : sa.min_tls_version == "TLS1_2"
    ])
    error_message = "CRITICAL: All enterprise storage accounts must enforce minimum TLS version 1.2."
  }
}

# Guardrail 2: Enforce soft delete on all Key Vaults
check "enforce_key_vault_soft_delete" {
  assert {
    condition = alltrue([
      for kv in var.key_vaults : kv.soft_delete_retention_days >= 7
    ])
    error_message = "CRITICAL: Key Vault soft delete retention days must be at least 7 days."
  }
}

# Guardrail 3: Enforce Private Endpoint connectivity
check "enforce_private_endpoint_subnets" {
  assert {
    condition = alltrue([
      for pe in var.private_endpoints : length(pe.subresource_names) > 0
    ])
    error_message = "CRITICAL: Private endpoints must define at least one valid subresource target."
  }
}

# Guardrail 4: Enforce approved VM SKUs
check "enforce_standard_vm_sizes" {
  assert {
    condition = alltrue([
      for vm in var.virtual_machines : can(regex("^(Standard_B|Standard_D)", vm.size))
    ])
    error_message = "CRITICAL: Virtual Machines must use approved enterprise instance sizes (Standard_B or Standard_D series)."
  }
}
