module "wrapper" {
  source = "../../modules/nexus-security-role"

  for_each = var.items

  description = try(each.value.description, var.defaults.description, "")
  name        = try(each.value.name, var.defaults.name)
  privileges  = try(each.value.privileges, var.defaults.privileges, [])
  roleid      = try(each.value.roleid, var.defaults.roleid)
  roles       = try(each.value.roles, var.defaults.roles, [])
}
