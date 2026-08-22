provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Security OIDC
################################################################################
module "nexus_security_oidc" {
  source = "../../modules/nexus-security-oidc"

  client_id         = "nexus"
  client_secret     = "very-secret"
  authorization_url = "https://idp.example.test/oauth2/authorize"
  token_url         = "https://idp.example.test/oauth2/token"
  jwks_url          = "https://idp.example.test/.well-known/jwks.json"
  jws_algorithm     = "RS256"
  username_claim    = "preferred_username"
  groups_claim      = "groups"
}
