################################################################################
# Security OIDC
################################################################################
resource "nexus_security_oidc" "main" {
  client_id                   = var.client_id
  client_secret               = var.client_secret
  authorization_url           = var.authorization_url
  token_url                   = var.token_url
  jwks_url                    = var.jwks_url
  jws_algorithm               = var.jws_algorithm
  username_claim              = var.username_claim
  groups_claim                = var.groups_claim
  authorization_custom_params = var.authorization_custom_params
  token_request_custom_params = var.token_request_custom_params
  email_claim                 = var.email_claim
  first_name_claim            = var.first_name_claim
  last_name_claim             = var.last_name_claim
  logout_url                  = var.logout_url
  jwks                        = var.jwks
  exact_match_claims          = var.exact_match_claims
  use_trust_store             = var.use_trust_store
}
