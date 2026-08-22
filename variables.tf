################################################################################
# Security Anonymous
################################################################################
variable "nexus_security_anonymous" {
  description = "Security Anonymous."
  type = list(object({
    enabled    = optional(bool)
    realm_name = optional(string)
    user_id    = optional(string)
  }))
  default = []
}

################################################################################
# Security Content Selector
################################################################################
variable "nexus_security_content_selector" {
  description = "Security Content Selector."
  type = list(object({
    name        = string
    description = optional(string)
    expression  = string
  }))
  default = []
}

################################################################################
# Security Ldap
################################################################################
variable "nexus_security_ldap" {
  description = "Security Ldap."
  type = list(object({
    name                           = string
    auth_schema                    = string
    auth_username                  = string
    connection_retry_delay_seconds = number
    connection_timeout_seconds     = number
    group_type                     = string
    host                           = string
    max_incident_count             = number
    port                           = number
    protocol                       = string
    search_base                    = string
    auth_password                  = optional(string)
    auth_realm                     = optional(string)
    group_base_dn                  = optional(string)
    group_id_attribute             = optional(string)
    group_member_attribute         = optional(string)
    group_member_format            = optional(string)
    group_object_class             = optional(string)
    group_subtree                  = optional(string)
    ldap_groups_as_roles           = optional(bool)
    use_trust_store                = optional(bool)
    user_base_dn                   = optional(string)
    user_email_address_attribute   = optional(string)
    user_id_attribute              = optional(string)
    user_ldap_filter               = optional(string)
    user_member_of_attribute       = optional(string)
    user_object_class              = optional(string)
    user_password_attribute        = optional(string)
    user_real_name_attribute       = optional(string)
    user_subtree                   = optional(bool)
  }))
  default = []
}

################################################################################
# Security OIDC
################################################################################
variable "nexus_security_oidc" {
  description = "Security OIDC."
  type = list(object({
    client_id                   = string
    client_secret               = string
    authorization_url           = string
    token_url                   = string
    jwks_url                    = string
    jws_algorithm               = string
    username_claim              = string
    groups_claim                = string
    authorization_custom_params = optional(map(string))
    token_request_custom_params = optional(map(string))
    email_claim                 = optional(string)
    first_name_claim            = optional(string)
    last_name_claim             = optional(string)
    logout_url                  = optional(string)
    jwks                        = optional(string)
    exact_match_claims          = optional(map(string))
    use_trust_store             = optional(bool)
  }))
  default = []
}

################################################################################
# Security Role
################################################################################
variable "nexus_security_role" {
  description = "Security Role."
  type = list(object({
    name        = string
    roleid      = string
    description = optional(string)
    privileges  = optional(set(string))
    roles       = optional(set(string))
  }))
  default = []
}

################################################################################
# Security Saml
################################################################################
variable "nexus_security_saml" {
  description = "Security Saml."
  type = list(object({
    idp_metadata                 = string
    username_attribute           = string
    email_attribute              = optional(string)
    entity_id                    = optional(string)
    first_name_attribute         = optional(string)
    groups_attribute             = optional(string)
    last_name_attribute          = optional(string)
    validate_assertion_signature = optional(bool)
    validate_response_signature  = optional(bool)
  }))
  default = []
}

################################################################################
# Security SSL Truststore
################################################################################
variable "nexus_security_ssl_truststore" {
  description = "Security SSL Truststore."
  type = list(object({
    pem = string
  }))
  default = []
}

################################################################################
# Security User
################################################################################
variable "nexus_security_user" {
  description = "Security User."
  type = list(object({
    email     = string
    firstname = string
    lastname  = string
    password  = string
    userid    = string
    roles     = optional(list(string))
    status    = optional(string)
  }))
  default = []
}
