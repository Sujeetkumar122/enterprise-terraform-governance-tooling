# ==============================================================================
# Enterprise Terraform Governance Root Module (100% Pure HCL)
# ==============================================================================

module "security_baseline" {
  source = "./modules/enterprise_security_baseline"

  storage_accounts  = var.storage_accounts
  key_vaults        = var.key_vaults
  private_endpoints = var.private_endpoints
  virtual_machines  = var.virtual_machines
}
