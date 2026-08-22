module "wrapper" {
  source = "../../modules/nexus-security-anonymous"

  for_each = var.items

  enabled    = try(each.value.enabled, var.defaults.enabled, false)
  realm_name = try(each.value.realm_name, var.defaults.realm_name, "NexusAuthorizingRealm")
  user_id    = try(each.value.user_id, var.defaults.user_id, "anonymous")
}
