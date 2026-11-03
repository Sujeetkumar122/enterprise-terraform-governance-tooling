output "security_status" {
  description = "Status of enterprise security baseline validation"
  value       = module.security_baseline.security_baseline_status
}
