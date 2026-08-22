################################################################################
# Security OIDC
################################################################################
output "client_id" {
  description = "Client id."
  value       = nexus_security_oidc.main.client_id
}
