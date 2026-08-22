################################################################################
# Security SSL Truststore
################################################################################
output "fingerprint" {
  description = "The certificate's fingerprint."
  value       = nexus_security_ssl_truststore.main.fingerprint
}
