mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    authorization_custom_params = { key = "test-value" }
    authorization_url           = "https://authorization-url.example.org"
    client_id                   = "test-client-id"
    client_secret               = "test-client-secret"
    email_claim                 = "email-claim@example.org"
    exact_match_claims          = { key = "test-value" }
    first_name_claim            = "test-first-name-claim"
    groups_claim                = "test-groups-claim"
    jwks                        = "test-jwks"
    jwks_url                    = "https://jwks-url.example.org"
    jws_algorithm               = "test-jws-algorithm"
    last_name_claim             = "test-last-name-claim"
    logout_url                  = "https://logout-url.example.org"
    token_request_custom_params = { key = "test-value" }
    token_url                   = "https://token-url.example.org"
    use_trust_store             = true
    username_claim              = "test-username-claim"
  }

  assert {
    condition     = nexus_security_oidc.main.client_id == var.client_id
    error_message = "client_id does not match var.client_id"
  }

  assert {
    condition     = nexus_security_oidc.main.client_secret == var.client_secret
    error_message = "client_secret does not match var.client_secret"
  }

  assert {
    condition     = nexus_security_oidc.main.authorization_url == var.authorization_url
    error_message = "authorization_url does not match var.authorization_url"
  }

  assert {
    condition     = nexus_security_oidc.main.token_url == var.token_url
    error_message = "token_url does not match var.token_url"
  }

  assert {
    condition     = nexus_security_oidc.main.jwks_url == var.jwks_url
    error_message = "jwks_url does not match var.jwks_url"
  }

  assert {
    condition     = nexus_security_oidc.main.jws_algorithm == var.jws_algorithm
    error_message = "jws_algorithm does not match var.jws_algorithm"
  }

  assert {
    condition     = nexus_security_oidc.main.username_claim == var.username_claim
    error_message = "username_claim does not match var.username_claim"
  }

  assert {
    condition     = nexus_security_oidc.main.groups_claim == var.groups_claim
    error_message = "groups_claim does not match var.groups_claim"
  }

  assert {
    condition     = nexus_security_oidc.main.authorization_custom_params == var.authorization_custom_params
    error_message = "authorization_custom_params does not match var.authorization_custom_params"
  }

  assert {
    condition     = nexus_security_oidc.main.token_request_custom_params == var.token_request_custom_params
    error_message = "token_request_custom_params does not match var.token_request_custom_params"
  }

  assert {
    condition     = nexus_security_oidc.main.email_claim == var.email_claim
    error_message = "email_claim does not match var.email_claim"
  }

  assert {
    condition     = nexus_security_oidc.main.first_name_claim == var.first_name_claim
    error_message = "first_name_claim does not match var.first_name_claim"
  }

  assert {
    condition     = nexus_security_oidc.main.last_name_claim == var.last_name_claim
    error_message = "last_name_claim does not match var.last_name_claim"
  }

  assert {
    condition     = nexus_security_oidc.main.logout_url == var.logout_url
    error_message = "logout_url does not match var.logout_url"
  }

  assert {
    condition     = nexus_security_oidc.main.jwks == var.jwks
    error_message = "jwks does not match var.jwks"
  }

  assert {
    condition     = nexus_security_oidc.main.exact_match_claims == var.exact_match_claims
    error_message = "exact_match_claims does not match var.exact_match_claims"
  }

  assert {
    condition     = nexus_security_oidc.main.use_trust_store == var.use_trust_store
    error_message = "use_trust_store does not match var.use_trust_store"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    authorization_url = "https://authorization-url.example.org"
    client_id         = "test-client-id"
    client_secret     = "test-client-secret"
    groups_claim      = "test-groups-claim"
    jwks_url          = "https://jwks-url.example.org"
    jws_algorithm     = "test-jws-algorithm"
    token_url         = "https://token-url.example.org"
    username_claim    = "test-username-claim"
  }

  assert {
    condition     = nexus_security_oidc.main.client_id == var.client_id
    error_message = "client_id does not match var.client_id"
  }

}
