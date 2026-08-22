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
| [nexus_security_saml.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_saml) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email_attribute"></a> [email\_attribute](#input\_email\_attribute) | IdP field mappings for user's email address. | `string` | `""` | no |
| <a name="input_entity_id"></a> [entity\_id](#input\_entity\_id) | Entity ID URI. | `string` | `""` | no |
| <a name="input_first_name_attribute"></a> [first\_name\_attribute](#input\_first\_name\_attribute) | IdP field mappings for user's given name. | `string` | `""` | no |
| <a name="input_groups_attribute"></a> [groups\_attribute](#input\_groups\_attribute) | IdP field mappings for user's groups. | `string` | `""` | no |
| <a name="input_idp_metadata"></a> [idp\_metadata](#input\_idp\_metadata) | SAML Identity Provider Metadata XML. | `string` | n/a | yes |
| <a name="input_last_name_attribute"></a> [last\_name\_attribute](#input\_last\_name\_attribute) | IdP field mappings for user's family name. | `string` | `""` | no |
| <a name="input_username_attribute"></a> [username\_attribute](#input\_username\_attribute) | IdP field mappings for username. | `string` | n/a | yes |
| <a name="input_validate_assertion_signature"></a> [validate\_assertion\_signature](#input\_validate\_assertion\_signature) | By default, if a signing key is found in the IdP metadata, then NXRM will attempt to validate signatures on the assertions. | `bool` | `null` | no |
| <a name="input_validate_response_signature"></a> [validate\_response\_signature](#input\_validate\_response\_signature) | By default, if a signing key is found in the IdP metadata, then NXRM will attempt to validate signatures on the response. | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_idp_metadata"></a> [idp\_metadata](#output\_idp\_metadata) | IDP metadata. |
| <a name="output_username_attribute"></a> [username\_attribute](#output\_username\_attribute) | Username attribute. |

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
| [nexus_security_saml.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_saml) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email_attribute"></a> [email\_attribute](#input\_email\_attribute) | IdP field mappings for user's email address. | `string` | `""` | no |
| <a name="input_entity_id"></a> [entity\_id](#input\_entity\_id) | Entity ID URI. | `string` | `""` | no |
| <a name="input_first_name_attribute"></a> [first\_name\_attribute](#input\_first\_name\_attribute) | IdP field mappings for user's given name. | `string` | `""` | no |
| <a name="input_groups_attribute"></a> [groups\_attribute](#input\_groups\_attribute) | IdP field mappings for user's groups. | `string` | `""` | no |
| <a name="input_idp_metadata"></a> [idp\_metadata](#input\_idp\_metadata) | SAML Identity Provider Metadata XML. | `string` | n/a | yes |
| <a name="input_last_name_attribute"></a> [last\_name\_attribute](#input\_last\_name\_attribute) | IdP field mappings for user's family name. | `string` | `""` | no |
| <a name="input_username_attribute"></a> [username\_attribute](#input\_username\_attribute) | IdP field mappings for username. | `string` | n/a | yes |
| <a name="input_validate_assertion_signature"></a> [validate\_assertion\_signature](#input\_validate\_assertion\_signature) | By default, if a signing key is found in the IdP metadata, then NXRM will attempt to validate signatures on the assertions. | `bool` | `null` | no |
| <a name="input_validate_response_signature"></a> [validate\_response\_signature](#input\_validate\_response\_signature) | By default, if a signing key is found in the IdP metadata, then NXRM will attempt to validate signatures on the response. | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_idp_metadata"></a> [idp\_metadata](#output\_idp\_metadata) | IDP metadata. |
| <a name="output_username_attribute"></a> [username\_attribute](#output\_username\_attribute) | Username attribute. |
<!-- END_TF_DOCS -->
