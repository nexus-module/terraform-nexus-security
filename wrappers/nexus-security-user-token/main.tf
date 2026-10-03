module "wrapper" {
  source = "../../modules/nexus-security-user-token"

  for_each = var.items

  enabled            = try(each.value.enabled, var.defaults.enabled)
  expiration_days    = try(each.value.expiration_days, var.defaults.expiration_days, null)
  expiration_enabled = try(each.value.expiration_enabled, var.defaults.expiration_enabled, null)
  protect_content    = try(each.value.protect_content, var.defaults.protect_content, null)
}
