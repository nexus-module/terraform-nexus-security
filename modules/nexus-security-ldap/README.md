## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nexus_security_ldap.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_ldap) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_password"></a> [auth\_password](#input\_auth\_password) | The password to bind with. Required if authScheme other than none. | `string` | `""` | no |
| <a name="input_auth_realm"></a> [auth\_realm](#input\_auth\_realm) | The SASL realm to bind to. Required if authScheme is CRAM\_MD5 or DIGEST\_MD5. | `string` | `""` | no |
| <a name="input_auth_schema"></a> [auth\_schema](#input\_auth\_schema) | Authentication scheme used for connecting to LDAP server. | `string` | n/a | yes |
| <a name="input_auth_username"></a> [auth\_username](#input\_auth\_username) | This must be a fully qualified username if simple authentication is used. Required if authScheme other than none. | `string` | n/a | yes |
| <a name="input_connection_retry_delay_seconds"></a> [connection\_retry\_delay\_seconds](#input\_connection\_retry\_delay\_seconds) | How long to wait before retrying. | `number` | n/a | yes |
| <a name="input_connection_timeout_seconds"></a> [connection\_timeout\_seconds](#input\_connection\_timeout\_seconds) | How long to wait before timeout. | `number` | n/a | yes |
| <a name="input_group_base_dn"></a> [group\_base\_dn](#input\_group\_base\_dn) | The relative DN where group objects are found (e.g. ou=Group). This value will have the Search base DN value appended to form the full Group search base DN. | `string` | `""` | no |
| <a name="input_group_id_attribute"></a> [group\_id\_attribute](#input\_group\_id\_attribute) | This field specifies the attribute of the Object class that defines the Group ID. Required if groupType is static. | `string` | `""` | no |
| <a name="input_group_member_attribute"></a> [group\_member\_attribute](#input\_group\_member\_attribute) | LDAP attribute containing the usernames for the group. Required if groupType is static. | `string` | `""` | no |
| <a name="input_group_member_format"></a> [group\_member\_format](#input\_group\_member\_format) | The format of user ID stored in the group member attribute. Required if groupType is static. | `string` | `""` | no |
| <a name="input_group_object_class"></a> [group\_object\_class](#input\_group\_object\_class) | LDAP class for group objects. Required if groupType is static. | `string` | `""` | no |
| <a name="input_group_subtree"></a> [group\_subtree](#input\_group\_subtree) | Are groups located in structures below the group base DN. | `string` | `""` | no |
| <a name="input_group_type"></a> [group\_type](#input\_group\_type) | Defines a type of groups used: static (a group contains a list of users) or dynamic (a user contains a list of groups). Required if ldapGroupsAsRoles is true. | `string` | n/a | yes |
| <a name="input_host"></a> [host](#input\_host) | LDAP server connection hostname. | `string` | n/a | yes |
| <a name="input_ldap_groups_as_roles"></a> [ldap\_groups\_as\_roles](#input\_ldap\_groups\_as\_roles) | Denotes whether LDAP assigned roles are used as Nexus Repository Manager roles. | `bool` | `false` | no |
| <a name="input_max_incident_count"></a> [max\_incident\_count](#input\_max\_incident\_count) | How many retry attempts. | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | LDAP server name. | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | LDAP server connection port to use. | `number` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | LDAP server connection Protocol to use. | `string` | n/a | yes |
| <a name="input_search_base"></a> [search\_base](#input\_search\_base) | LDAP location to be added to the connection URL. | `string` | n/a | yes |
| <a name="input_use_trust_store"></a> [use\_trust\_store](#input\_use\_trust\_store) | Whether to use certificates stored in Nexus Repository Manager's truststore. | `bool` | `false` | no |
| <a name="input_user_base_dn"></a> [user\_base\_dn](#input\_user\_base\_dn) | The relative DN where user objects are found (e.g. ou=people). This value will have the Search base DN value appended to form the full User search base DN. | `string` | `""` | no |
| <a name="input_user_email_address_attribute"></a> [user\_email\_address\_attribute](#input\_user\_email\_address\_attribute) | This is used to find an email address given the user ID. | `string` | `""` | no |
| <a name="input_user_id_attribute"></a> [user\_id\_attribute](#input\_user\_id\_attribute) | This is used to find a user given its user ID. | `string` | `""` | no |
| <a name="input_user_ldap_filter"></a> [user\_ldap\_filter](#input\_user\_ldap\_filter) | LDAP search filter to limit user search. | `string` | `""` | no |
| <a name="input_user_member_of_attribute"></a> [user\_member\_of\_attribute](#input\_user\_member\_of\_attribute) | Set this to the attribute used to store the attribute which holds groups DN in the user object. Required if groupType is dynamic. | `string` | `""` | no |
| <a name="input_user_object_class"></a> [user\_object\_class](#input\_user\_object\_class) | LDAP class for user objects. | `string` | `""` | no |
| <a name="input_user_password_attribute"></a> [user\_password\_attribute](#input\_user\_password\_attribute) | If this field is blank the user will be authenticated against a bind with the LDAP server. | `string` | `""` | no |
| <a name="input_user_real_name_attribute"></a> [user\_real\_name\_attribute](#input\_user\_real\_name\_attribute) | This is used to find a real name given the user ID. | `string` | `""` | no |
| <a name="input_user_subtree"></a> [user\_subtree](#input\_user\_subtree) | Are users located in structures below the user base DN?. | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nexus_security_ldap.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_ldap) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_password"></a> [auth\_password](#input\_auth\_password) | The password to bind with. Required if authScheme other than none. | `string` | `""` | no |
| <a name="input_auth_realm"></a> [auth\_realm](#input\_auth\_realm) | The SASL realm to bind to. Required if authScheme is CRAM\_MD5 or DIGEST\_MD5. | `string` | `""` | no |
| <a name="input_auth_schema"></a> [auth\_schema](#input\_auth\_schema) | Authentication scheme used for connecting to LDAP server. | `string` | n/a | yes |
| <a name="input_auth_username"></a> [auth\_username](#input\_auth\_username) | This must be a fully qualified username if simple authentication is used. Required if authScheme other than none. | `string` | n/a | yes |
| <a name="input_connection_retry_delay_seconds"></a> [connection\_retry\_delay\_seconds](#input\_connection\_retry\_delay\_seconds) | How long to wait before retrying. | `number` | n/a | yes |
| <a name="input_connection_timeout_seconds"></a> [connection\_timeout\_seconds](#input\_connection\_timeout\_seconds) | How long to wait before timeout. | `number` | n/a | yes |
| <a name="input_group_base_dn"></a> [group\_base\_dn](#input\_group\_base\_dn) | The relative DN where group objects are found (e.g. ou=Group). This value will have the Search base DN value appended to form the full Group search base DN. | `string` | `""` | no |
| <a name="input_group_id_attribute"></a> [group\_id\_attribute](#input\_group\_id\_attribute) | This field specifies the attribute of the Object class that defines the Group ID. Required if groupType is static. | `string` | `""` | no |
| <a name="input_group_member_attribute"></a> [group\_member\_attribute](#input\_group\_member\_attribute) | LDAP attribute containing the usernames for the group. Required if groupType is static. | `string` | `""` | no |
| <a name="input_group_member_format"></a> [group\_member\_format](#input\_group\_member\_format) | The format of user ID stored in the group member attribute. Required if groupType is static. | `string` | `""` | no |
| <a name="input_group_object_class"></a> [group\_object\_class](#input\_group\_object\_class) | LDAP class for group objects. Required if groupType is static. | `string` | `""` | no |
| <a name="input_group_subtree"></a> [group\_subtree](#input\_group\_subtree) | Are groups located in structures below the group base DN. | `string` | `""` | no |
| <a name="input_group_type"></a> [group\_type](#input\_group\_type) | Defines a type of groups used: static (a group contains a list of users) or dynamic (a user contains a list of groups). Required if ldapGroupsAsRoles is true. | `string` | n/a | yes |
| <a name="input_host"></a> [host](#input\_host) | LDAP server connection hostname. | `string` | n/a | yes |
| <a name="input_ldap_groups_as_roles"></a> [ldap\_groups\_as\_roles](#input\_ldap\_groups\_as\_roles) | Denotes whether LDAP assigned roles are used as Nexus Repository Manager roles. | `bool` | `false` | no |
| <a name="input_max_incident_count"></a> [max\_incident\_count](#input\_max\_incident\_count) | How many retry attempts. | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | LDAP server name. | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | LDAP server connection port to use. | `number` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | LDAP server connection Protocol to use. | `string` | n/a | yes |
| <a name="input_search_base"></a> [search\_base](#input\_search\_base) | LDAP location to be added to the connection URL. | `string` | n/a | yes |
| <a name="input_use_trust_store"></a> [use\_trust\_store](#input\_use\_trust\_store) | Whether to use certificates stored in Nexus Repository Manager's truststore. | `bool` | `false` | no |
| <a name="input_user_base_dn"></a> [user\_base\_dn](#input\_user\_base\_dn) | The relative DN where user objects are found (e.g. ou=people). This value will have the Search base DN value appended to form the full User search base DN. | `string` | `""` | no |
| <a name="input_user_email_address_attribute"></a> [user\_email\_address\_attribute](#input\_user\_email\_address\_attribute) | This is used to find an email address given the user ID. | `string` | `""` | no |
| <a name="input_user_id_attribute"></a> [user\_id\_attribute](#input\_user\_id\_attribute) | This is used to find a user given its user ID. | `string` | `""` | no |
| <a name="input_user_ldap_filter"></a> [user\_ldap\_filter](#input\_user\_ldap\_filter) | LDAP search filter to limit user search. | `string` | `""` | no |
| <a name="input_user_member_of_attribute"></a> [user\_member\_of\_attribute](#input\_user\_member\_of\_attribute) | Set this to the attribute used to store the attribute which holds groups DN in the user object. Required if groupType is dynamic. | `string` | `""` | no |
| <a name="input_user_object_class"></a> [user\_object\_class](#input\_user\_object\_class) | LDAP class for user objects. | `string` | `""` | no |
| <a name="input_user_password_attribute"></a> [user\_password\_attribute](#input\_user\_password\_attribute) | If this field is blank the user will be authenticated against a bind with the LDAP server. | `string` | `""` | no |
| <a name="input_user_real_name_attribute"></a> [user\_real\_name\_attribute](#input\_user\_real\_name\_attribute) | This is used to find a real name given the user ID. | `string` | `""` | no |
| <a name="input_user_subtree"></a> [user\_subtree](#input\_user\_subtree) | Are users located in structures below the user base DN?. | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |
<!-- END_TF_DOCS -->
