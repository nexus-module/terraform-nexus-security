################################################################################
# Security OIDC
################################################################################
output "client_id" {
  description = "The client_id of the resource."
  value       = module.nexus_security_oidc.client_id
}
