module "wrapper" {
  source = "../../modules/nexus-security-saml"

  for_each = var.items

  email_attribute              = try(each.value.email_attribute, var.defaults.email_attribute, "")
  entity_id                    = try(each.value.entity_id, var.defaults.entity_id, "")
  first_name_attribute         = try(each.value.first_name_attribute, var.defaults.first_name_attribute, "")
  groups_attribute             = try(each.value.groups_attribute, var.defaults.groups_attribute, "")
  idp_metadata                 = try(each.value.idp_metadata, var.defaults.idp_metadata)
  last_name_attribute          = try(each.value.last_name_attribute, var.defaults.last_name_attribute, "")
  username_attribute           = try(each.value.username_attribute, var.defaults.username_attribute)
  validate_assertion_signature = try(each.value.validate_assertion_signature, var.defaults.validate_assertion_signature, null)
  validate_response_signature  = try(each.value.validate_response_signature, var.defaults.validate_response_signature, null)
}
