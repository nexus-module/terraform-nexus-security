mock_provider "nexus" {}

run "creates_one_module_per_item" {
  command = plan

  variables {
    nexus_security_anonymous = [
      {
        enabled    = true
        realm_name = "test-realm-name-a"
        user_id    = "test-user-id-a"
      },
      {
        enabled    = true
        realm_name = "test-realm-name-b"
        user_id    = "test-user-id-b"
      }
    ]
    nexus_security_content_selector = [
      {
        name        = "test-name-a"
        description = "test-description-a"
        expression  = "test-expression-a"
      },
      {
        name        = "test-name-b"
        description = "test-description-b"
        expression  = "test-expression-b"
      }
    ]
    nexus_security_ldap = [
      {
        name                           = "test-name-a"
        auth_schema                    = "SIMPLE"
        auth_username                  = "test-auth-username-a"
        connection_retry_delay_seconds = 30
        connection_timeout_seconds     = 30
        group_type                     = "static"
        host                           = "host-a.example.org"
        max_incident_count             = 30
        port                           = 8082
        protocol                       = "LDAP"
        search_base                    = "test-search-base-a"
        auth_password                  = "test-auth-password-a"
        auth_realm                     = "test-auth-realm-a"
        group_base_dn                  = "test-group-base-dn-a"
        group_id_attribute             = "test-group-id-attribute-a"
        group_member_attribute         = "test-group-member-attribute-a"
        group_member_format            = "test-group-member-format-a"
        group_object_class             = "test-group-object-class-a"
        group_subtree                  = true
        ldap_groups_as_roles           = true
        use_trust_store                = true
        user_base_dn                   = "test-user-base-dn-a"
        user_email_address_attribute   = "user-email-address-attribute-a@example.org"
        user_id_attribute              = "test-user-id-attribute-a"
        user_ldap_filter               = "test-user-ldap-filter-a"
        user_member_of_attribute       = "test-user-member-of-attribute-a"
        user_object_class              = "test-user-object-class-a"
        user_password_attribute        = "test-user-password-attribute-a"
        user_real_name_attribute       = "test-user-real-name-attribute-a"
        user_subtree                   = true
      },
      {
        name                           = "test-name-b"
        auth_schema                    = "SIMPLE"
        auth_username                  = "test-auth-username-b"
        connection_retry_delay_seconds = 30
        connection_timeout_seconds     = 30
        group_type                     = "static"
        host                           = "host-b.example.org"
        max_incident_count             = 30
        port                           = 8082
        protocol                       = "LDAP"
        search_base                    = "test-search-base-b"
        auth_password                  = "test-auth-password-b"
        auth_realm                     = "test-auth-realm-b"
        group_base_dn                  = "test-group-base-dn-b"
        group_id_attribute             = "test-group-id-attribute-b"
        group_member_attribute         = "test-group-member-attribute-b"
        group_member_format            = "test-group-member-format-b"
        group_object_class             = "test-group-object-class-b"
        group_subtree                  = true
        ldap_groups_as_roles           = true
        use_trust_store                = true
        user_base_dn                   = "test-user-base-dn-b"
        user_email_address_attribute   = "user-email-address-attribute-b@example.org"
        user_id_attribute              = "test-user-id-attribute-b"
        user_ldap_filter               = "test-user-ldap-filter-b"
        user_member_of_attribute       = "test-user-member-of-attribute-b"
        user_object_class              = "test-user-object-class-b"
        user_password_attribute        = "test-user-password-attribute-b"
        user_real_name_attribute       = "test-user-real-name-attribute-b"
        user_subtree                   = true
      }
    ]
    nexus_security_oidc = [
      {
        client_id                   = "test-client-id-a"
        client_secret               = "test-client-secret-a"
        authorization_url           = "https://authorization-url-a.example.org"
        token_url                   = "https://token-url-a.example.org"
        jwks_url                    = "https://jwks-url-a.example.org"
        jws_algorithm               = "test-jws-algorithm-a"
        username_claim              = "test-username-claim-a"
        groups_claim                = "test-groups-claim-a"
        authorization_custom_params = { key = "test-value-a" }
        token_request_custom_params = { key = "test-value-a" }
        email_claim                 = "email-claim-a@example.org"
        first_name_claim            = "test-first-name-claim-a"
        last_name_claim             = "test-last-name-claim-a"
        logout_url                  = "https://logout-url-a.example.org"
        jwks                        = "test-jwks-a"
        exact_match_claims          = { key = "test-value-a" }
        use_trust_store             = true
      },
      {
        client_id                   = "test-client-id-b"
        client_secret               = "test-client-secret-b"
        authorization_url           = "https://authorization-url-b.example.org"
        token_url                   = "https://token-url-b.example.org"
        jwks_url                    = "https://jwks-url-b.example.org"
        jws_algorithm               = "test-jws-algorithm-b"
        username_claim              = "test-username-claim-b"
        groups_claim                = "test-groups-claim-b"
        authorization_custom_params = { key = "test-value-b" }
        token_request_custom_params = { key = "test-value-b" }
        email_claim                 = "email-claim-b@example.org"
        first_name_claim            = "test-first-name-claim-b"
        last_name_claim             = "test-last-name-claim-b"
        logout_url                  = "https://logout-url-b.example.org"
        jwks                        = "test-jwks-b"
        exact_match_claims          = { key = "test-value-b" }
        use_trust_store             = true
      }
    ]
    nexus_security_role = [
      {
        name        = "test-name-a"
        roleid      = "test-roleid-a"
        description = "test-description-a"
        privileges  = ["test-privilege-a"]
        roles       = ["test-role-a"]
      },
      {
        name        = "test-name-b"
        roleid      = "test-roleid-b"
        description = "test-description-b"
        privileges  = ["test-privilege-b"]
        roles       = ["test-role-b"]
      }
    ]
    nexus_security_saml = [
      {
        idp_metadata                 = "test-idp-metadata-a"
        username_attribute           = "test-username-attribute-a"
        email_attribute              = "email-attribute-a@example.org"
        entity_id                    = "test-entity-id-a"
        first_name_attribute         = "test-first-name-attribute-a"
        groups_attribute             = "test-groups-attribute-a"
        last_name_attribute          = "test-last-name-attribute-a"
        validate_assertion_signature = true
        validate_response_signature  = true
      },
      {
        idp_metadata                 = "test-idp-metadata-b"
        username_attribute           = "test-username-attribute-b"
        email_attribute              = "email-attribute-b@example.org"
        entity_id                    = "test-entity-id-b"
        first_name_attribute         = "test-first-name-attribute-b"
        groups_attribute             = "test-groups-attribute-b"
        last_name_attribute          = "test-last-name-attribute-b"
        validate_assertion_signature = true
        validate_response_signature  = true
      }
    ]
    nexus_security_ssl_truststore = [
      {
        pem = "test-pem-a"
      },
      {
        pem = "test-pem-b"
      }
    ]
    nexus_security_user = [
      {
        email               = "email-a@example.org"
        firstname           = "test-firstname-a"
        lastname            = "test-lastname-a"
        password            = "test-password-a"
        password_wo         = null
        password_wo_version = null
        userid              = "test-userid-a"
        roles               = ["test-role-a"]
        status              = "active"
      },
      {
        email               = "email-b@example.org"
        firstname           = "test-firstname-b"
        lastname            = "test-lastname-b"
        password            = "test-password-b"
        password_wo         = null
        password_wo_version = null
        userid              = "test-userid-b"
        roles               = ["test-role-b"]
        status              = "active"
      }
    ]
  }

  assert {
    condition     = length(module.nexus_security_anonymous) == 2
    error_message = "nexus_security_anonymous must create one nexus-security-anonymous per item"
  }

  assert {
    condition     = alltrue([for k in ["test-realm-name-a", "test-realm-name-b"] : contains(keys(module.nexus_security_anonymous), k)])
    error_message = "nexus_security_anonymous must be keyed by realm_name"
  }

  assert {
    condition     = length(module.nexus_security_content_selector) == 2
    error_message = "nexus_security_content_selector must create one nexus-security-content-selector per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_security_content_selector), k)])
    error_message = "nexus_security_content_selector must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_security_ldap) == 2
    error_message = "nexus_security_ldap must create one nexus-security-ldap per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_security_ldap), k)])
    error_message = "nexus_security_ldap must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_security_oidc) == 2
    error_message = "nexus_security_oidc must create one nexus-security-oidc per item"
  }

  assert {
    condition     = alltrue([for k in ["test-client-id-a", "test-client-id-b"] : contains(keys(module.nexus_security_oidc), k)])
    error_message = "nexus_security_oidc must be keyed by client_id"
  }

  assert {
    condition     = length(module.nexus_security_role) == 2
    error_message = "nexus_security_role must create one nexus-security-role per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_security_role), k)])
    error_message = "nexus_security_role must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_security_saml) == 2
    error_message = "nexus_security_saml must create one nexus-security-saml per item"
  }

  assert {
    condition     = alltrue([for k in ["test-username-attribute-a", "test-username-attribute-b"] : contains(keys(module.nexus_security_saml), k)])
    error_message = "nexus_security_saml must be keyed by username_attribute"
  }

  assert {
    condition     = length(module.nexus_security_ssl_truststore) == 2
    error_message = "nexus_security_ssl_truststore must create one nexus-security-ssl-truststore per item"
  }

  assert {
    condition     = alltrue([for k in ["test-pem-a", "test-pem-b"] : contains(keys(module.nexus_security_ssl_truststore), k)])
    error_message = "nexus_security_ssl_truststore must be keyed by pem"
  }

  assert {
    condition     = length(module.nexus_security_user) == 2
    error_message = "nexus_security_user must create one nexus-security-user per item"
  }

  assert {
    condition     = alltrue([for k in ["test-userid-a", "test-userid-b"] : contains(keys(module.nexus_security_user), k)])
    error_message = "nexus_security_user must be keyed by userid"
  }

}

run "creates_nothing_by_default" {
  command = plan

  assert {
    condition     = length(module.nexus_security_anonymous) == 0
    error_message = "nexus_security_anonymous must be empty by default"
  }

  assert {
    condition     = length(module.nexus_security_content_selector) == 0
    error_message = "nexus_security_content_selector must be empty by default"
  }

  assert {
    condition     = length(module.nexus_security_ldap) == 0
    error_message = "nexus_security_ldap must be empty by default"
  }

  assert {
    condition     = length(module.nexus_security_oidc) == 0
    error_message = "nexus_security_oidc must be empty by default"
  }

  assert {
    condition     = length(module.nexus_security_role) == 0
    error_message = "nexus_security_role must be empty by default"
  }

  assert {
    condition     = length(module.nexus_security_saml) == 0
    error_message = "nexus_security_saml must be empty by default"
  }

  assert {
    condition     = length(module.nexus_security_ssl_truststore) == 0
    error_message = "nexus_security_ssl_truststore must be empty by default"
  }

  assert {
    condition     = length(module.nexus_security_user) == 0
    error_message = "nexus_security_user must be empty by default"
  }

}
