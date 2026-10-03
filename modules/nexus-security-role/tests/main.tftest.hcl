mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    description = "test-description"
    name        = "test-name"
    privileges  = ["test-privilege"]
    roleid      = "test-roleid"
    roles       = ["test-role"]
  }

  assert {
    condition     = nexus_security_role.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_security_role.main.roleid == var.roleid
    error_message = "roleid does not match var.roleid"
  }

  assert {
    condition     = nexus_security_role.main.description == var.description
    error_message = "description does not match var.description"
  }

  assert {
    condition     = nexus_security_role.main.privileges == var.privileges
    error_message = "privileges does not match var.privileges"
  }

  assert {
    condition     = nexus_security_role.main.roles == var.roles
    error_message = "roles does not match var.roles"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    name   = "test-name"
    roleid = "test-roleid"
  }

  assert {
    condition     = nexus_security_role.main.name == var.name
    error_message = "name does not match var.name"
  }

}
