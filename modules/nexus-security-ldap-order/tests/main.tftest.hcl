mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    order = ["test-order"]
  }

  assert {
    condition     = nexus_security_ldap_order.main.order == var.order
    error_message = "order does not match var.order"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    order = ["test-order"]
  }

  assert {
    condition     = nexus_security_ldap_order.main.order == var.order
    error_message = "order does not match var.order"
  }

}
