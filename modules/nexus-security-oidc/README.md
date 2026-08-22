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
| [nexus_security_oidc.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_oidc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authorization_custom_params"></a> [authorization\_custom\_params](#input\_authorization\_custom\_params) | Extra query parameters for authorization requests. | `map(string)` | `null` | no |
| <a name="input_authorization_url"></a> [authorization\_url](#input\_authorization\_url) | Authorization endpoint URL. | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | Unique identifier issued by the OpenID Provider. | `string` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | Secret credential from the OpenID Provider. | `string` | n/a | yes |
| <a name="input_email_claim"></a> [email\_claim](#input\_email\_claim) | ID token claim mapping the user's email address. | `string` | `null` | no |
| <a name="input_exact_match_claims"></a> [exact\_match\_claims](#input\_exact\_match\_claims) | Claims requiring exact validation. | `map(string)` | `null` | no |
| <a name="input_first_name_claim"></a> [first\_name\_claim](#input\_first\_name\_claim) | ID token claim mapping the user's given name. | `string` | `null` | no |
| <a name="input_groups_claim"></a> [groups\_claim](#input\_groups\_claim) | ID token claim carrying group memberships. | `string` | n/a | yes |
| <a name="input_jwks"></a> [jwks](#input\_jwks) | Inline JWKS JSON, as an alternative to jwks\_url. | `string` | `null` | no |
| <a name="input_jwks_url"></a> [jwks\_url](#input\_jwks\_url) | JSON Web Key Set endpoint URL. | `string` | n/a | yes |
| <a name="input_jws_algorithm"></a> [jws\_algorithm](#input\_jws\_algorithm) | JWT signature algorithm (e.g. RS256). | `string` | n/a | yes |
| <a name="input_last_name_claim"></a> [last\_name\_claim](#input\_last\_name\_claim) | ID token claim mapping the user's surname. | `string` | `null` | no |
| <a name="input_logout_url"></a> [logout\_url](#input\_logout\_url) | End-session endpoint URL. | `string` | `null` | no |
| <a name="input_token_request_custom_params"></a> [token\_request\_custom\_params](#input\_token\_request\_custom\_params) | Extra parameters for token requests. | `map(string)` | `null` | no |
| <a name="input_token_url"></a> [token\_url](#input\_token\_url) | Token endpoint URL. | `string` | n/a | yes |
| <a name="input_use_trust_store"></a> [use\_trust\_store](#input\_use\_trust\_store) | Validate the provider's certificate against the Nexus truststore. | `bool` | `null` | no |
| <a name="input_username_claim"></a> [username\_claim](#input\_username\_claim) | ID token claim identifying the user. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_id"></a> [client\_id](#output\_client\_id) | Client id. |
<!-- END_TF_DOCS -->
