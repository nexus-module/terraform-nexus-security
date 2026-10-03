mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    active = ["test-active"]
  }

  assert {
    condition     = nexus_security_realms.main.active == var.active
    error_message = "active does not match var.active"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    active = ["test-active"]
  }

  assert {
    condition     = nexus_security_realms.main.active == var.active
    error_message = "active does not match var.active"
  }

}
