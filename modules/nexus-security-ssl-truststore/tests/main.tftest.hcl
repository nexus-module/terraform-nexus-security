mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    pem = "test-pem"
  }

  assert {
    condition     = nexus_security_ssl_truststore.main.pem == var.pem
    error_message = "pem does not match var.pem"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    pem = "test-pem"
  }

  assert {
    condition     = nexus_security_ssl_truststore.main.pem == var.pem
    error_message = "pem does not match var.pem"
  }

}
