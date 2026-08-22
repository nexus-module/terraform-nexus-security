provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Security SSL Truststore
################################################################################
data "nexus_security_ssl" "ldap_cert" {
  host = "google.de"
  port = 443
}

module "nexus_security_ssl_truststore" {
  source = "../../modules/nexus-security-ssl-truststore"

  pem = data.nexus_security_ssl.ldap_cert.pem
}
