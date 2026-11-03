# ==============================================================================
# Enterprise Terraform Language Rules (Pure HCL)
# ==============================================================================

# Ensure all variables have an explicit description
rule "terraform_documented_variables" {
  enabled = true
}

# Ensure all outputs have an explicit description
rule "terraform_documented_outputs" {
  enabled = true
}

# Ensure all variables specify an explicit type constraint
rule "terraform_typed_variables" {
  enabled = true
}

# Ensure required version constraints are defined
rule "terraform_required_version" {
  enabled = true
}

# Ensure required providers constraints are defined
rule "terraform_required_providers" {
  enabled = true
}
