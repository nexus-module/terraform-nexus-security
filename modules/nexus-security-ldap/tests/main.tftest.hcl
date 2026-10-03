mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    auth_password                  = "test-auth-password"
    auth_realm                     = "test-auth-realm"
    auth_schema                    = "SIMPLE"
    auth_username                  = "test-auth-username"
    connection_retry_delay_seconds = 30
    connection_timeout_seconds     = 30
    group_base_dn                  = "test-group-base-dn"
    group_id_attribute             = "test-group-id-attribute"
    group_member_attribute         = "test-group-member-attribute"
    group_member_format            = "test-group-member-format"
    group_object_class             = "test-group-object-class"
    group_subtree                  = true
    group_type                     = "static"
    host                           = "host.example.org"
    ldap_groups_as_roles           = true
    max_incident_count             = 30
    name                           = "test-name"
    port                           = 8082
    protocol                       = "LDAP"
    search_base                    = "test-search-base"
    use_trust_store                = true
    user_base_dn                   = "test-user-base-dn"
    user_email_address_attribute   = "user-email-address-attribute@example.org"
    user_id_attribute              = "test-user-id-attribute"
    user_ldap_filter               = "test-user-ldap-filter"
    user_member_of_attribute       = "test-user-member-of-attribute"
    user_object_class              = "test-user-object-class"
    user_password_attribute        = "test-user-password-attribute"
    user_real_name_attribute       = "test-user-real-name-attribute"
    user_subtree                   = true
  }

  assert {
    condition     = nexus_security_ldap.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_security_ldap.main.auth_schema == var.auth_schema
    error_message = "auth_schema does not match var.auth_schema"
  }

  assert {
    condition     = nexus_security_ldap.main.auth_username == var.auth_username
    error_message = "auth_username does not match var.auth_username"
  }

  assert {
    condition     = nexus_security_ldap.main.connection_retry_delay_seconds == var.connection_retry_delay_seconds
    error_message = "connection_retry_delay_seconds does not match var.connection_retry_delay_seconds"
  }

  assert {
    condition     = nexus_security_ldap.main.connection_timeout_seconds == var.connection_timeout_seconds
    error_message = "connection_timeout_seconds does not match var.connection_timeout_seconds"
  }

  assert {
    condition     = nexus_security_ldap.main.group_type == var.group_type
    error_message = "group_type does not match var.group_type"
  }

  assert {
    condition     = nexus_security_ldap.main.host == var.host
    error_message = "host does not match var.host"
  }

  assert {
    condition     = nexus_security_ldap.main.max_incident_count == var.max_incident_count
    error_message = "max_incident_count does not match var.max_incident_count"
  }

  assert {
    condition     = nexus_security_ldap.main.port == var.port
    error_message = "port does not match var.port"
  }

  assert {
    condition     = nexus_security_ldap.main.protocol == var.protocol
    error_message = "protocol does not match var.protocol"
  }

  assert {
    condition     = nexus_security_ldap.main.search_base == var.search_base
    error_message = "search_base does not match var.search_base"
  }

  assert {
    condition     = nexus_security_ldap.main.auth_password == var.auth_password
    error_message = "auth_password does not match var.auth_password"
  }

  assert {
    condition     = nexus_security_ldap.main.auth_realm == var.auth_realm
    error_message = "auth_realm does not match var.auth_realm"
  }

  assert {
    condition     = nexus_security_ldap.main.group_base_dn == var.group_base_dn
    error_message = "group_base_dn does not match var.group_base_dn"
  }

  assert {
    condition     = nexus_security_ldap.main.group_id_attribute == var.group_id_attribute
    error_message = "group_id_attribute does not match var.group_id_attribute"
  }

  assert {
    condition     = nexus_security_ldap.main.group_member_attribute == var.group_member_attribute
    error_message = "group_member_attribute does not match var.group_member_attribute"
  }

  assert {
    condition     = nexus_security_ldap.main.group_member_format == var.group_member_format
    error_message = "group_member_format does not match var.group_member_format"
  }

  assert {
    condition     = nexus_security_ldap.main.group_object_class == var.group_object_class
    error_message = "group_object_class does not match var.group_object_class"
  }

  assert {
    condition     = nexus_security_ldap.main.group_subtree == var.group_subtree
    error_message = "group_subtree does not match var.group_subtree"
  }

  assert {
    condition     = nexus_security_ldap.main.ldap_groups_as_roles == var.ldap_groups_as_roles
    error_message = "ldap_groups_as_roles does not match var.ldap_groups_as_roles"
  }

  assert {
    condition     = nexus_security_ldap.main.use_trust_store == var.use_trust_store
    error_message = "use_trust_store does not match var.use_trust_store"
  }

  assert {
    condition     = nexus_security_ldap.main.user_base_dn == var.user_base_dn
    error_message = "user_base_dn does not match var.user_base_dn"
  }

  assert {
    condition     = nexus_security_ldap.main.user_email_address_attribute == var.user_email_address_attribute
    error_message = "user_email_address_attribute does not match var.user_email_address_attribute"
  }

  assert {
    condition     = nexus_security_ldap.main.user_id_attribute == var.user_id_attribute
    error_message = "user_id_attribute does not match var.user_id_attribute"
  }

  assert {
    condition     = nexus_security_ldap.main.user_ldap_filter == var.user_ldap_filter
    error_message = "user_ldap_filter does not match var.user_ldap_filter"
  }

  assert {
    condition     = nexus_security_ldap.main.user_member_of_attribute == var.user_member_of_attribute
    error_message = "user_member_of_attribute does not match var.user_member_of_attribute"
  }

  assert {
    condition     = nexus_security_ldap.main.user_object_class == var.user_object_class
    error_message = "user_object_class does not match var.user_object_class"
  }

  assert {
    condition     = nexus_security_ldap.main.user_password_attribute == var.user_password_attribute
    error_message = "user_password_attribute does not match var.user_password_attribute"
  }

  assert {
    condition     = nexus_security_ldap.main.user_real_name_attribute == var.user_real_name_attribute
    error_message = "user_real_name_attribute does not match var.user_real_name_attribute"
  }

  assert {
    condition     = nexus_security_ldap.main.user_subtree == var.user_subtree
    error_message = "user_subtree does not match var.user_subtree"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    auth_schema                    = "SIMPLE"
    auth_username                  = "test-auth-username"
    connection_retry_delay_seconds = 30
    connection_timeout_seconds     = 30
    group_type                     = "static"
    host                           = "host.example.org"
    max_incident_count             = 30
    name                           = "test-name"
    port                           = 8082
    protocol                       = "LDAP"
    search_base                    = "test-search-base"
  }

  assert {
    condition     = nexus_security_ldap.main.name == var.name
    error_message = "name does not match var.name"
  }

}
