module "wrapper" {
  source = "../../modules/nexus-security-content-selector"

  for_each = var.items

  description = try(each.value.description, var.defaults.description, "")
  expression  = try(each.value.expression, var.defaults.expression)
  name        = try(each.value.name, var.defaults.name)
}
