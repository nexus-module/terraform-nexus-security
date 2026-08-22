################################################################################
# Security Anonymous
################################################################################
module "nexus_security_anonymous" {
  source = "./modules/nexus-security-anonymous"

  for_each = { for s in var.nexus_security_anonymous : s.realm_name => s }

  realm_name = each.value.realm_name
  enabled    = each.value.enabled
  user_id    = each.value.user_id
}

################################################################################
# Security Content Selector
################################################################################
module "nexus_security_content_selector" {
  source = "./modules/nexus-security-content-selector"

  for_each = { for s in var.nexus_security_content_selector : s.name => s }

  name        = each.value.name
  description = each.value.description
  expression  = each.value.expression
}

################################################################################
# Security Ldap
################################################################################
module "nexus_security_ldap" {
  source = "./modules/nexus-security-ldap"

  for_each = { for s in var.nexus_security_ldap : s.name => s }

  name                           = each.value.name
  auth_schema                    = each.value.auth_schema
  auth_username                  = each.value.auth_username
  connection_retry_delay_seconds = each.value.connection_retry_delay_seconds
  connection_timeout_seconds     = each.value.connection_timeout_seconds
  group_type                     = each.value.group_type
  host                           = each.value.host
  max_incident_count             = each.value.max_incident_count
  port                           = each.value.port
  protocol                       = each.value.protocol
  search_base                    = each.value.search_base
  use_trust_store                = each.value.use_trust_store
  auth_password                  = each.value.auth_password
  auth_realm                     = each.value.auth_realm
  group_base_dn                  = each.value.group_base_dn
  group_id_attribute             = each.value.group_id_attribute
  group_member_attribute         = each.value.group_member_attribute
  group_member_format            = each.value.group_member_format
  group_object_class             = each.value.group_object_class
  group_subtree                  = each.value.group_subtree
  ldap_groups_as_roles           = each.value.ldap_groups_as_roles
  user_base_dn                   = each.value.user_base_dn
  user_email_address_attribute   = each.value.user_email_address_attribute
  user_id_attribute              = each.value.user_id_attribute
  user_ldap_filter               = each.value.user_ldap_filter
  user_member_of_attribute       = each.value.user_member_of_attribute
  user_object_class              = each.value.user_object_class
  user_password_attribute        = each.value.user_password_attribute
  user_real_name_attribute       = each.value.user_real_name_attribute
  user_subtree                   = each.value.user_subtree
}

################################################################################
# Security OIDC
################################################################################
module "nexus_security_oidc" {
  source = "./modules/nexus-security-oidc"

  for_each = { for s in var.nexus_security_oidc : s.client_id => s }

  client_id                   = each.value.client_id
  client_secret               = each.value.client_secret
  authorization_url           = each.value.authorization_url
  token_url                   = each.value.token_url
  jwks_url                    = each.value.jwks_url
  jws_algorithm               = each.value.jws_algorithm
  username_claim              = each.value.username_claim
  groups_claim                = each.value.groups_claim
  authorization_custom_params = each.value.authorization_custom_params
  token_request_custom_params = each.value.token_request_custom_params
  email_claim                 = each.value.email_claim
  first_name_claim            = each.value.first_name_claim
  last_name_claim             = each.value.last_name_claim
  logout_url                  = each.value.logout_url
  jwks                        = each.value.jwks
  exact_match_claims          = each.value.exact_match_claims
  use_trust_store             = each.value.use_trust_store
}

################################################################################
# Security Role
################################################################################
module "nexus_security_role" {
  source = "./modules/nexus-security-role"

  for_each = { for s in var.nexus_security_role : s.name => s }

  description = each.value.description
  name        = each.value.name
  privileges  = each.value.privileges
  roleid      = each.value.roleid
}

################################################################################
# Security Saml
################################################################################
module "nexus_security_saml" {
  source = "./modules/nexus-security-saml"

  for_each = { for s in var.nexus_security_saml : s.username_attribute => s }

  idp_metadata       = each.value.idp_metadata
  username_attribute = each.value.username_attribute

  entity_id                    = each.value.entity_id
  validate_response_signature  = each.value.validate_response_signature
  validate_assertion_signature = each.value.validate_assertion_signature
  first_name_attribute         = each.value.first_name_attribute
  last_name_attribute          = each.value.last_name_attribute
  email_attribute              = each.value.email_attribute
  groups_attribute             = each.value.groups_attribute
}

################################################################################
# Security SSL Truststore
################################################################################
module "nexus_security_ssl_truststore" {
  source = "./modules/nexus-security-ssl-truststore"

  for_each = { for s in var.nexus_security_ssl_truststore : s.pem => s }

  pem = each.value.pem
}

################################################################################
# Security User
################################################################################
module "nexus_security_user" {
  source = "./modules/nexus-security-user"

  for_each = { for s in var.nexus_security_user : s.userid => s }

  userid    = each.value.userid
  firstname = each.value.firstname
  lastname  = each.value.lastname
  email     = each.value.email
  password  = each.value.password
  roles     = each.value.roles
  status    = each.value.status
}
