mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    enabled    = true
    realm_name = "test-realm-name"
    user_id    = "test-user-id"
  }

  assert {
    condition     = nexus_security_anonymous.main.enabled == var.enabled
    error_message = "enabled does not match var.enabled"
  }

  assert {
    condition     = nexus_security_anonymous.main.user_id == var.user_id
    error_message = "user_id does not match var.user_id"
  }

  assert {
    condition     = nexus_security_anonymous.main.realm_name == var.realm_name
    error_message = "realm_name does not match var.realm_name"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {

  }

  assert {
    condition     = nexus_security_anonymous.main.enabled == var.enabled
    error_message = "enabled does not match var.enabled"
  }

}
