variable "storage_accounts" {
  description = "Storage accounts to validate against enterprise security baseline"
  type = map(object({
    min_tls_version = optional(string, "TLS1_2")
  }))
  default = {}
}

variable "key_vaults" {
  description = "Key vaults to validate against enterprise security baseline"
  type = map(object({
    soft_delete_retention_days = optional(number, 7)
  }))
  default = {}
}

variable "private_endpoints" {
  description = "Private endpoints to validate against enterprise security baseline"
  type = map(object({
    subresource_names = list(string)
  }))
  default = {}
}

variable "virtual_machines" {
  description = "Virtual machines to validate against enterprise security baseline"
  type = map(object({
    size = string
  }))
  default = {}
}
