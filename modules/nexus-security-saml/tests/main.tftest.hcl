mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    email_attribute              = "email-attribute@example.org"
    entity_id                    = "test-entity-id"
    first_name_attribute         = "test-first-name-attribute"
    groups_attribute             = "test-groups-attribute"
    idp_metadata                 = "test-idp-metadata"
    last_name_attribute          = "test-last-name-attribute"
    username_attribute           = "test-username-attribute"
    validate_assertion_signature = true
    validate_response_signature  = true
  }

  assert {
    condition     = nexus_security_saml.main.idp_metadata == var.idp_metadata
    error_message = "idp_metadata does not match var.idp_metadata"
  }

  assert {
    condition     = nexus_security_saml.main.username_attribute == var.username_attribute
    error_message = "username_attribute does not match var.username_attribute"
  }

  assert {
    condition     = nexus_security_saml.main.email_attribute == var.email_attribute
    error_message = "email_attribute does not match var.email_attribute"
  }

  assert {
    condition     = nexus_security_saml.main.entity_id == var.entity_id
    error_message = "entity_id does not match var.entity_id"
  }

  assert {
    condition     = nexus_security_saml.main.first_name_attribute == var.first_name_attribute
    error_message = "first_name_attribute does not match var.first_name_attribute"
  }

  assert {
    condition     = nexus_security_saml.main.groups_attribute == var.groups_attribute
    error_message = "groups_attribute does not match var.groups_attribute"
  }

  assert {
    condition     = nexus_security_saml.main.last_name_attribute == var.last_name_attribute
    error_message = "last_name_attribute does not match var.last_name_attribute"
  }

  assert {
    condition     = nexus_security_saml.main.validate_assertion_signature == var.validate_assertion_signature
    error_message = "validate_assertion_signature does not match var.validate_assertion_signature"
  }

  assert {
    condition     = nexus_security_saml.main.validate_response_signature == var.validate_response_signature
    error_message = "validate_response_signature does not match var.validate_response_signature"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    idp_metadata       = "test-idp-metadata"
    username_attribute = "test-username-attribute"
  }

  assert {
    condition     = nexus_security_saml.main.idp_metadata == var.idp_metadata
    error_message = "idp_metadata does not match var.idp_metadata"
  }

}
