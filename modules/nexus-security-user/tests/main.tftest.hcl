mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    email               = "email@example.org"
    firstname           = "test-firstname"
    lastname            = "test-lastname"
    password            = "test-password"
    password_wo         = null
    password_wo_version = null
    roles               = ["test-role"]
    status              = "active"
    userid              = "test-userid"
  }

  assert {
    condition     = nexus_security_user.main.userid == var.userid
    error_message = "userid does not match var.userid"
  }

  assert {
    condition     = nexus_security_user.main.firstname == var.firstname
    error_message = "firstname does not match var.firstname"
  }

  assert {
    condition     = nexus_security_user.main.lastname == var.lastname
    error_message = "lastname does not match var.lastname"
  }

  assert {
    condition     = nexus_security_user.main.email == var.email
    error_message = "email does not match var.email"
  }

  assert {
    condition     = nexus_security_user.main.password == var.password
    error_message = "password does not match var.password"
  }

  assert {
    condition     = nexus_security_user.main.password_wo_version == var.password_wo_version
    error_message = "password_wo_version does not match var.password_wo_version"
  }

  assert {
    condition     = nexus_security_user.main.roles == var.roles
    error_message = "roles does not match var.roles"
  }

  assert {
    condition     = nexus_security_user.main.status == var.status
    error_message = "status does not match var.status"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    email     = "email@example.org"
    firstname = "test-firstname"
    lastname  = "test-lastname"
    userid    = "test-userid"
  }

  assert {
    condition     = nexus_security_user.main.userid == var.userid
    error_message = "userid does not match var.userid"
  }

}

run "uses_write_only_password" {
  command = plan

  variables {
    userid              = "test-userid"
    firstname           = "Test"
    lastname            = "User"
    email               = "test-user@example.org"
    password_wo         = "test-password-wo"
    password_wo_version = 2
  }

  assert {
    condition     = nexus_security_user.main.password == null
    error_message = "password must stay unset when password_wo is used"
  }

  assert {
    condition     = nexus_security_user.main.password_wo_version == var.password_wo_version
    error_message = "password_wo_version does not match var.password_wo_version"
  }
}
