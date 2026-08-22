module "wrapper" {
  source = "../../modules/nexus-security-ldap-order"

  for_each = var.items

  order = try(each.value.order, var.defaults.order)
}
