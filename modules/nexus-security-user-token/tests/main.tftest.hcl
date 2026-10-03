mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    enabled            = true
    expiration_days    = 30
    expiration_enabled = true
    protect_content    = true
  }

  assert {
    condition     = nexus_security_user_token.main.enabled == var.enabled
    error_message = "enabled does not match var.enabled"
  }

  assert {
    condition     = nexus_security_user_token.main.protect_content == var.protect_content
    error_message = "protect_content does not match var.protect_content"
  }

  assert {
    condition     = nexus_security_user_token.main.expiration_enabled == var.expiration_enabled
    error_message = "expiration_enabled does not match var.expiration_enabled"
  }

  assert {
    condition     = nexus_security_user_token.main.expiration_days == var.expiration_days
    error_message = "expiration_days does not match var.expiration_days"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    enabled = true
  }

  assert {
    condition     = nexus_security_user_token.main.enabled == var.enabled
    error_message = "enabled does not match var.enabled"
  }

}
