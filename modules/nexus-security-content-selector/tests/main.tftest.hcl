mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    description = "test-description"
    expression  = "test-expression"
    name        = "test-name"
  }

  assert {
    condition     = nexus_security_content_selector.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_security_content_selector.main.description == var.description
    error_message = "description does not match var.description"
  }

  assert {
    condition     = nexus_security_content_selector.main.expression == var.expression
    error_message = "expression does not match var.expression"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    expression = "test-expression"
    name       = "test-name"
  }

  assert {
    condition     = nexus_security_content_selector.main.name == var.name
    error_message = "name does not match var.name"
  }

}
