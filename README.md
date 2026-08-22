# Nexus Security

This module allows you to create **Nexus Security as a global resource** and **individual Nexus Security resources.** For individual examples, see the usage snippets and [examples](https://github.com/nexus-module/terraform-nexus-security/tree/main/examples).

## Provider
You need use a [Nexus provider](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs).
```hcl
provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}
```

## Root module usage

`nexus-security`:

```hcl
module "nexus_security" {
  source  = "nexus-module/security/nexus"

 nexus_security_anonymous = [
    {
      realm_name = "NexusAuthorizingRealm"
      enabled    = true
      user_id    = "anonymous"
    },
  ]

  nexus_security_content_selector = [
    {
      name        = "example"
      description = "example content selector"
      expression  = "format == \"raw\""
    },
  ]

  nexus_security_ldap = [
    {
      name                           = "example-ldap"
      auth_schema                    = "NONE"
      auth_username                  = "admin"
      connection_retry_delay_seconds = 1
      connection_timeout_seconds     = 1
      group_type                     = "static"
      host                           = "ldap.example.com"
      max_incident_count             = 1
      port                           = 389
      protocol                       = "LDAP"
      search_base                    = "dc=example,dc=com"
      use_trust_store                = false
      auth_password                  = "t0ps3cr3t"
      auth_realm                     = "EXAMPLE"
      group_base_dn                  = "ou=Group"
      group_id_attribute             = "cn"
      group_member_attribute         = "memberUid"
      group_member_format            = "uid=username,ou=people,dc=example,dc=com"
      group_object_class             = "example"
      group_subtree                  = true
      ldap_groups_as_roles           = true
      user_base_dn                   = "ou=people"
      user_email_address_attribute   = "mail"
      user_id_attribute              = "uid"
      user_ldap_filter               = "(|(mail=*@example.com)(uid=dom*))"
      user_member_of_attribute       = "memberOf"
      user_object_class              = "posixGroup"
      user_password_attribute        = "exmaple"
      user_real_name_attribute       = "cn"
      user_subtree                   = true
    },
  ]

  nexus_security_role = [
    {
      description = "Docker deployment role"
      name        = "docker-deploy"
      privileges = [
        "nx-repository-view-docker-*-*",
      ]
      roleid = "docker-deploy"
    },
  ]

  nexus_security_saml = [
    {
      idp_metadata                 = "<EntityDescriptor ...>...</EntityDescriptor>"
      username_attribute           = "username"
      entity_id                    = "http://nexus.example/service/rest/v1/security/saml/metadata"
      validate_response_signature  = true
      validate_assertion_signature = true
      first_name_attribute         = "firstName"
      last_name_attribute          = "lastName"
      email_attribute              = "email"
      groups_attribute             = "groups"
    },
  ]

  nexus_security_user = [
    {
      userid    = "admin"
      firstname = "Administrator"
      lastname  = "User"
      email     = "nexus@example.com"
      password  = "admin123"
      roles     = ["nx-admin"]
      status    = "active"
    },
  ]
}
```

## Individual module usage

`nexus-security-anonymous`:

```hcl
module "nexus_security_anonymous" {
  source  = "nexus-module/security/nexus//modules/nexus-security-anonymous"

  enabled    = true
  realm_name = "NexusAuthorizingRealm"
  user_id    = "anonymous"
}
```

`nexus-security-content-selector`:

```hcl
module "nexus_security_content_selector" {
  source  = "nexus-module/security/nexus//modules/nexus-security-content-selector"

  name        = "example"
  description = "example content selector"
  expression  = "format == \"raw\""
}
```

`nexus-security-ldap`:

```hcl
module "nexus_security_ldap" {
  source  = "nexus-module/security/nexus//modules/nexus-security-ldap"

  name                           = "example-ldap"
  auth_schema                    = "NONE"
  auth_username                  = "admin"
  connection_retry_delay_seconds = 1
  connection_timeout_seconds     = 1
  group_type                     = "static"
  host                           = "ldap.example.com"
  max_incident_count             = 1
  port                           = 389
  protocol                       = "LDAP"
  search_base                    = "dc=example,dc=com"
  use_trust_store                = false
  auth_password                  = "t0ps3cr3t"
  auth_realm                     = "EXAMPLE"
  group_base_dn                  = "ou=Group"
  group_id_attribute             = "cn"
  group_member_attribute         = "memberUid"
  group_member_format            = "uid=username,ou=people,dc=example,dc=com"
  group_object_class             = "example"
  group_subtree                  = true
  ldap_groups_as_roles           = true
  user_base_dn                   = "ou=people"
  user_email_address_attribute   = "mail"
  user_id_attribute              = "uid"
  user_ldap_filter               = "(|(mail=*@example.com)(uid=dom*))"
  user_member_of_attribute       = "memberOf"
  user_object_class              = "posixGroup"
  user_password_attribute        = "exmaple"
  user_real_name_attribute       = "cn"
  user_subtree                   = true
}
```

`nexus-security-ldap-order`:

```hcl
module "nexus_security_ldap_order" {
  source  = "nexus-module/security/nexus//modules/nexus-security-ldap-order"

  order = [
    "server1",
    "server2"
  ]
}
```

`nexus-security-reamls`:

```hcl
module "nexus_privilege_script" {
  source  = "nexus-module/security/nexus//modules/nexus-security-realms"

  active = [
    "NexusAuthenticatingRealm",
    "DockerToken",
  ]
}
```

`nexus-security-role`:

```hcl
module "nexus_security_role" {
  source  = "nexus-module/security/nexus//modules/nexus-security-role"

  description = "Docker deployment role"
  name        = "docker-deploy"
  privileges = [
    "nx-repository-view-docker-*-*",
  ]
  roleid = "docker-deploy"
}
```

`nexus-security-saml`:

```hcl
module "nexus_security_saml" {
  source  = "nexus-module/security/nexus//modules/nexus-security-saml"

  idp_metadata                 = "<EntityDescriptor ...>...</EntityDescriptor>"
  entity_id                    = "http://nexus.example/service/rest/v1/security/saml/metadata"
  validate_response_signature  = true
  validate_assertion_signature = true
  username_attribute           = "username"
  first_name_attribute         = "firstName"
  last_name_attribute          = "lastName"
  email_attribute              = "email"
  groups_attribute             = "groups"
}
```

`nexus-security-user`:

```hcl
module "nexus_security_user" {
  source  = "nexus-module/security/nexus//modules/nexus-security-user"

  userid    = "admin"
  firstname = "Administrator"
  lastname  = "User"
  email     = "nexus@example.com"
  password  = "admin123"
  roles     = ["nx-admin"]
  status    = "active"
}
```

`nexus-security-token`:

```hcl
module "nexus_security_user_token" {
  source  = "nexus-module/security/nexus//modules/nexus-security-token"

  enabled         = true
  protect_content = false
}
```

## Terraform Docs

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

### Providers

No providers.

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nexus_security_anonymous"></a> [nexus\_security\_anonymous](#module\_nexus\_security\_anonymous) | ./modules/nexus-security-anonymous | n/a |
| <a name="module_nexus_security_content_selector"></a> [nexus\_security\_content\_selector](#module\_nexus\_security\_content\_selector) | ./modules/nexus-security-content-selector | n/a |
| <a name="module_nexus_security_ldap"></a> [nexus\_security\_ldap](#module\_nexus\_security\_ldap) | ./modules/nexus-security-ldap | n/a |
| <a name="module_nexus_security_role"></a> [nexus\_security\_role](#module\_nexus\_security\_role) | ./modules/nexus-security-role | n/a |
| <a name="module_nexus_security_saml"></a> [nexus\_security\_saml](#module\_nexus\_security\_saml) | ./modules/nexus-security-saml | n/a |
| <a name="module_nexus_security_user"></a> [nexus\_security\_user](#module\_nexus\_security\_user) | ./modules/nexus-security-user | n/a |

### Resources

No resources.

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nexus_security_anonymous"></a> [nexus\_security\_anonymous](#input\_nexus\_security\_anonymous) | Security Anonymous. | <pre>list(object({<br>    enabled    = optional(bool)<br>    realm_name = optional(string)<br>    user_id    = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_content_selector"></a> [nexus\_security\_content\_selector](#input\_nexus\_security\_content\_selector) | Security Content Selector. | <pre>list(object({<br>    name        = string<br>    description = optional(string)<br>    expression  = string<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_ldap"></a> [nexus\_security\_ldap](#input\_nexus\_security\_ldap) | Security Ldap. | <pre>list(object({<br>    name                           = string<br>    auth_schema                    = string<br>    auth_username                  = string<br>    connection_retry_delay_seconds = number<br>    connection_timeout_seconds     = number<br>    group_type                     = string<br>    host                           = string<br>    max_incident_count             = number<br>    port                           = number<br>    protocol                       = string<br>    search_base                    = string<br>    auth_password                  = optional(string)<br>    auth_realm                     = optional(string)<br>    group_base_dn                  = optional(string)<br>    group_id_attribute             = optional(string)<br>    group_member_attribute         = optional(string)<br>    group_member_format            = optional(string)<br>    group_object_class             = optional(string)<br>    group_subtree                  = optional(string)<br>    ldap_groups_as_roles           = optional(bool)<br>    use_trust_store                = optional(bool)<br>    user_base_dn                   = optional(string)<br>    user_email_address_attribute   = optional(string)<br>    user_id_attribute              = optional(string)<br>    user_ldap_filter               = optional(string)<br>    user_member_of_attribute       = optional(string)<br>    user_object_class              = optional(string)<br>    user_password_attribute        = optional(string)<br>    user_real_name_attribute       = optional(string)<br>    user_subtree                   = optional(bool)<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_role"></a> [nexus\_security\_role](#input\_nexus\_security\_role) | Security Role. | <pre>list(object({<br>    name        = string<br>    roleid      = string<br>    description = optional(string)<br>    privileges  = optional(set(string))<br>    roles       = optional(set(string))<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_saml"></a> [nexus\_security\_saml](#input\_nexus\_security\_saml) | Security Saml. | <pre>list(object({<br>    idp_metadata                 = string<br>    username_attribute           = string<br>    email_attribute              = optional(string)<br>    entity_id                    = optional(string)<br>    first_name_attribute         = optional(string)<br>    groups_attribute             = optional(string)<br>    last_name_attribute          = optional(string)<br>    validate_assertion_signature = optional(bool)<br>    validate_response_signature  = optional(bool)<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_user"></a> [nexus\_security\_user](#input\_nexus\_security\_user) | Security User. | <pre>list(object({<br>    email     = string<br>    firstname = string<br>    lastname  = string<br>    password  = string<br>    userid    = string<br>    roles     = optional(list(string))<br>    status    = optional(string)<br>  }))</pre> | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_anonymous"></a> [security\_anonymous](#output\_security\_anonymous) | Security Anonymous. |
| <a name="output_security_content_selector"></a> [security\_content\_selector](#output\_security\_content\_selector) | Security Content Selector. |
| <a name="output_security_ldap"></a> [security\_ldap](#output\_security\_ldap) | Security Ldap. |
| <a name="output_security_role"></a> [security\_role](#output\_security\_role) | Security Role. |
| <a name="output_security_saml"></a> [security\_saml](#output\_security\_saml) | Security Saml. |
| <a name="output_security_user"></a> [security\_user](#output\_security\_user) | Security User. |

## Authors

Module is maintained by [DevOps IA](https://github.com/devops-ia) with help from [these awesome contributors](https://github.com/nexus-module/terraform-nexus-security/graphs/contributors).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nexus_security_anonymous"></a> [nexus\_security\_anonymous](#module\_nexus\_security\_anonymous) | ./modules/nexus-security-anonymous | n/a |
| <a name="module_nexus_security_content_selector"></a> [nexus\_security\_content\_selector](#module\_nexus\_security\_content\_selector) | ./modules/nexus-security-content-selector | n/a |
| <a name="module_nexus_security_ldap"></a> [nexus\_security\_ldap](#module\_nexus\_security\_ldap) | ./modules/nexus-security-ldap | n/a |
| <a name="module_nexus_security_oidc"></a> [nexus\_security\_oidc](#module\_nexus\_security\_oidc) | ./modules/nexus-security-oidc | n/a |
| <a name="module_nexus_security_role"></a> [nexus\_security\_role](#module\_nexus\_security\_role) | ./modules/nexus-security-role | n/a |
| <a name="module_nexus_security_saml"></a> [nexus\_security\_saml](#module\_nexus\_security\_saml) | ./modules/nexus-security-saml | n/a |
| <a name="module_nexus_security_ssl_truststore"></a> [nexus\_security\_ssl\_truststore](#module\_nexus\_security\_ssl\_truststore) | ./modules/nexus-security-ssl-truststore | n/a |
| <a name="module_nexus_security_user"></a> [nexus\_security\_user](#module\_nexus\_security\_user) | ./modules/nexus-security-user | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nexus_security_anonymous"></a> [nexus\_security\_anonymous](#input\_nexus\_security\_anonymous) | Security Anonymous. | <pre>list(object({<br>    enabled    = optional(bool)<br>    realm_name = optional(string)<br>    user_id    = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_content_selector"></a> [nexus\_security\_content\_selector](#input\_nexus\_security\_content\_selector) | Security Content Selector. | <pre>list(object({<br>    name        = string<br>    description = optional(string)<br>    expression  = string<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_ldap"></a> [nexus\_security\_ldap](#input\_nexus\_security\_ldap) | Security Ldap. | <pre>list(object({<br>    name                           = string<br>    auth_schema                    = string<br>    auth_username                  = string<br>    connection_retry_delay_seconds = number<br>    connection_timeout_seconds     = number<br>    group_type                     = string<br>    host                           = string<br>    max_incident_count             = number<br>    port                           = number<br>    protocol                       = string<br>    search_base                    = string<br>    auth_password                  = optional(string)<br>    auth_realm                     = optional(string)<br>    group_base_dn                  = optional(string)<br>    group_id_attribute             = optional(string)<br>    group_member_attribute         = optional(string)<br>    group_member_format            = optional(string)<br>    group_object_class             = optional(string)<br>    group_subtree                  = optional(string)<br>    ldap_groups_as_roles           = optional(bool)<br>    use_trust_store                = optional(bool)<br>    user_base_dn                   = optional(string)<br>    user_email_address_attribute   = optional(string)<br>    user_id_attribute              = optional(string)<br>    user_ldap_filter               = optional(string)<br>    user_member_of_attribute       = optional(string)<br>    user_object_class              = optional(string)<br>    user_password_attribute        = optional(string)<br>    user_real_name_attribute       = optional(string)<br>    user_subtree                   = optional(bool)<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_oidc"></a> [nexus\_security\_oidc](#input\_nexus\_security\_oidc) | Security OIDC. | <pre>list(object({<br>    client_id                   = string<br>    client_secret               = string<br>    authorization_url           = string<br>    token_url                   = string<br>    jwks_url                    = string<br>    jws_algorithm               = string<br>    username_claim              = string<br>    groups_claim                = string<br>    authorization_custom_params = optional(map(string))<br>    token_request_custom_params = optional(map(string))<br>    email_claim                 = optional(string)<br>    first_name_claim            = optional(string)<br>    last_name_claim             = optional(string)<br>    logout_url                  = optional(string)<br>    jwks                        = optional(string)<br>    exact_match_claims          = optional(map(string))<br>    use_trust_store             = optional(bool)<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_role"></a> [nexus\_security\_role](#input\_nexus\_security\_role) | Security Role. | <pre>list(object({<br>    name        = string<br>    roleid      = string<br>    description = optional(string)<br>    privileges  = optional(set(string))<br>    roles       = optional(set(string))<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_saml"></a> [nexus\_security\_saml](#input\_nexus\_security\_saml) | Security Saml. | <pre>list(object({<br>    idp_metadata                 = string<br>    username_attribute           = string<br>    email_attribute              = optional(string)<br>    entity_id                    = optional(string)<br>    first_name_attribute         = optional(string)<br>    groups_attribute             = optional(string)<br>    last_name_attribute          = optional(string)<br>    validate_assertion_signature = optional(bool)<br>    validate_response_signature  = optional(bool)<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_ssl_truststore"></a> [nexus\_security\_ssl\_truststore](#input\_nexus\_security\_ssl\_truststore) | Security SSL Truststore. | <pre>list(object({<br>    pem = string<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_security_user"></a> [nexus\_security\_user](#input\_nexus\_security\_user) | Security User. | <pre>list(object({<br>    email     = string<br>    firstname = string<br>    lastname  = string<br>    password  = string<br>    userid    = string<br>    roles     = optional(list(string))<br>    status    = optional(string)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_anonymous"></a> [security\_anonymous](#output\_security\_anonymous) | Security Anonymous. |
| <a name="output_security_content_selector"></a> [security\_content\_selector](#output\_security\_content\_selector) | Security Content Selector. |
| <a name="output_security_ldap"></a> [security\_ldap](#output\_security\_ldap) | Security Ldap. |
| <a name="output_security_role"></a> [security\_role](#output\_security\_role) | Security Role. |
| <a name="output_security_saml"></a> [security\_saml](#output\_security\_saml) | Security Saml. |
| <a name="output_security_user"></a> [security\_user](#output\_security\_user) | Security User. |
<!-- END_TF_DOCS -->
