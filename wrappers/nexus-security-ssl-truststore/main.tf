module "wrapper" {
  source = "../../modules/nexus-security-ssl-truststore"

  for_each = var.items

  pem = try(each.value.pem, var.defaults.pem)
}
