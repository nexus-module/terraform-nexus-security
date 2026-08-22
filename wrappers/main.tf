module "wrapper" {
  source = "../"

  for_each = var.items

  nexus_security_anonymous        = try(each.value.nexus_security_anonymous, var.defaults.nexus_security_anonymous, [])
  nexus_security_content_selector = try(each.value.nexus_security_content_selector, var.defaults.nexus_security_content_selector, [])
  nexus_security_ldap             = try(each.value.nexus_security_ldap, var.defaults.nexus_security_ldap, [])
  nexus_security_oidc             = try(each.value.nexus_security_oidc, var.defaults.nexus_security_oidc, [])
  nexus_security_role             = try(each.value.nexus_security_role, var.defaults.nexus_security_role, [])
  nexus_security_saml             = try(each.value.nexus_security_saml, var.defaults.nexus_security_saml, [])
  nexus_security_ssl_truststore   = try(each.value.nexus_security_ssl_truststore, var.defaults.nexus_security_ssl_truststore, [])
  nexus_security_user             = try(each.value.nexus_security_user, var.defaults.nexus_security_user, [])
}
