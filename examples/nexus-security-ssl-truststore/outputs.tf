################################################################################
# Security SSL Truststore
################################################################################
output "fingerprint" {
  description = "The fingerprint of the resource."
  value       = module.nexus_security_ssl_truststore.fingerprint
}
