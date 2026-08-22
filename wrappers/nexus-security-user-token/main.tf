module "wrapper" {
  source = "../../modules/nexus-security-user-token"

  for_each = var.items

  enabled         = try(each.value.enabled, var.defaults.enabled)
  protect_content = try(each.value.protect_content, var.defaults.protect_content, null)
}
