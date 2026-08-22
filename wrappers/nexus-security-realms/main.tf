module "wrapper" {
  source = "../../modules/nexus-security-realms"

  for_each = var.items

  active = try(each.value.active, var.defaults.active)
}
