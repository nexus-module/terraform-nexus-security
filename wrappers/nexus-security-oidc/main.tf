module "wrapper" {
  source = "../../modules/nexus-security-oidc"

  for_each = var.items

  authorization_custom_params = try(each.value.authorization_custom_params, var.defaults.authorization_custom_params, null)
  authorization_url           = try(each.value.authorization_url, var.defaults.authorization_url)
  client_id                   = try(each.value.client_id, var.defaults.client_id)
  client_secret               = try(each.value.client_secret, var.defaults.client_secret)
  email_claim                 = try(each.value.email_claim, var.defaults.email_claim, null)
  exact_match_claims          = try(each.value.exact_match_claims, var.defaults.exact_match_claims, null)
  first_name_claim            = try(each.value.first_name_claim, var.defaults.first_name_claim, null)
  groups_claim                = try(each.value.groups_claim, var.defaults.groups_claim)
  jwks                        = try(each.value.jwks, var.defaults.jwks, null)
  jwks_url                    = try(each.value.jwks_url, var.defaults.jwks_url)
  jws_algorithm               = try(each.value.jws_algorithm, var.defaults.jws_algorithm)
  last_name_claim             = try(each.value.last_name_claim, var.defaults.last_name_claim, null)
  logout_url                  = try(each.value.logout_url, var.defaults.logout_url, null)
  token_request_custom_params = try(each.value.token_request_custom_params, var.defaults.token_request_custom_params, null)
  token_url                   = try(each.value.token_url, var.defaults.token_url)
  use_trust_store             = try(each.value.use_trust_store, var.defaults.use_trust_store, null)
  username_claim              = try(each.value.username_claim, var.defaults.username_claim)
}
