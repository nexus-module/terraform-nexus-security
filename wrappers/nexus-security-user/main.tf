module "wrapper" {
  source = "../../modules/nexus-security-user"

  for_each = var.items

  email     = try(each.value.email, var.defaults.email)
  firstname = try(each.value.firstname, var.defaults.firstname)
  lastname  = try(each.value.lastname, var.defaults.lastname)
  password  = try(each.value.password, var.defaults.password)
  roles     = try(each.value.roles, var.defaults.roles, [])
  status    = try(each.value.status, var.defaults.status, "")
  userid    = try(each.value.userid, var.defaults.userid)
}
