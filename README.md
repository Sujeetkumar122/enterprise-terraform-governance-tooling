# Enterprise Terraform Governance & Security Tooling

Centralized security, compliance, and static code analysis framework for enterprise Terraform codebases — **100% written in Pure HCL (HashiCorp Configuration Language)** without shell scripts.

## 🛡️ HCL Governance Architecture

```
enterprise-terraform-governance-tooling/
├── .tflint.hcl                                  # Centralized TFLint HCL config & plugin declarations
├── rules/
│   ├── azurerm_security_rules.hcl              # Azure compliance rules written in HCL
│   └── terraform_language_rules.hcl            # Language standard rules written in HCL
├── modules/
│   └── enterprise_security_baseline/
│       ├── main.tf                             # Terraform native `check` & `assert` blocks in HCL
│       ├── variables.tf                        # HCL variable definitions
│       └── outputs.tf                          # HCL output definitions
├── versions.tf                                 # Terraform version constraint (HCL)
└── README.md
```

## 🔍 Features & Compliance
- **Zero Shell Scripts**: All linting and policy rules are declared directly in HCL syntax.
- **TFLint HCL Configuration (`.tflint.hcl`)**:
  - `terraform-linters/tflint-ruleset-azurerm`: Azure Resource Manager rules (TLS 1.2, private links, standard SKUs).
  - `terraform-linters/tflint-ruleset-terraform`: Standard coding conventions, unused variable detection.
- **Terraform Native Guardrails (`check` blocks in HCL)**:
  - Validates storage account encryption and TLS 1.2 minimum version.
  - Enforces Key Vault soft delete retention.
  - Enforces approved VM instance SKUs.
