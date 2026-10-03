module "wrapper" {
  source = "../../modules/nexus-security-user"

  for_each = var.items

  email               = try(each.value.email, var.defaults.email)
  firstname           = try(each.value.firstname, var.defaults.firstname)
  lastname            = try(each.value.lastname, var.defaults.lastname)
  password            = try(each.value.password, var.defaults.password, null)
  password_wo         = try(each.value.password_wo, var.defaults.password_wo, null)
  password_wo_version = try(each.value.password_wo_version, var.defaults.password_wo_version, null)
  roles               = try(each.value.roles, var.defaults.roles, [])
  status              = try(each.value.status, var.defaults.status, null)
  userid              = try(each.value.userid, var.defaults.userid)
}
