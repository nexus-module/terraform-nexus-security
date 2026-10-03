provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Security User Token
################################################################################
module "nexus_security_user_token" {
  source = "../../modules/nexus-security-user-token"

  enabled            = true
  protect_content    = false
  expiration_enabled = true
  expiration_days    = 30
}
