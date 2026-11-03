# Enterprise Terraform Governance & Security Tooling

Centralized security, compliance, and static code analysis framework for enterprise Terraform codebases.

## 🛡️ Overview
This repository provides automated quality gates, linting rules (via **TFLint** and plugins), and reusable CI/CD workflows to ensure every Terraform repository adheres to enterprise security and architectural standards before deployment.

## 🔍 Included Tools & Configurations
- **TFLint (`.tflint.hcl`)**:
  - `terraform-linters/tflint-ruleset-terraform`: Terraform syntax, unused declarations, and convention checks.
  - `terraform-linters/tflint-ruleset-azurerm`: Azure Resource Manager rules (enforcing TLS 1.2 on storage accounts, standard SKUs, proper private endpoints).
- **GitHub Actions Workflows (`.github/workflows/`)**:
  - Automated pull request linters and security scanners.
- **Pre-commit Hooks (`.pre-commit-config.yaml`)**:
  - Local workstation verification before committing code.
- **Automation Scripts (`scripts/`)**:
  - One-click PowerShell and Bash scripts to initialize rulesets and run linting across repositories.

## ⚡ Quick Start (Local Run)
```powershell
# Run TFLint on target repository
cd scripts
.\run-tflint.ps1 -TargetPath "..\..\enterprise-azure-infrastructure-live"
```

