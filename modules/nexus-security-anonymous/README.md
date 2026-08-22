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
| [nexus_security_anonymous.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_anonymous) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Activate the anonymous access to the repository manager. | `bool` | `false` | no |
| <a name="input_realm_name"></a> [realm\_name](#input\_realm\_name) | The name of the used realm. | `string` | `"NexusAuthorizingRealm"` | no |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | The user id used by anonymous access. | `string` | `"anonymous"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_realm_name"></a> [realm\_name](#output\_realm\_name) | Realm name. |
| <a name="output_user_id"></a> [user\_id](#output\_user\_id) | User Id. |

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
| [nexus_security_anonymous.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_anonymous) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Activate the anonymous access to the repository manager. | `bool` | `false` | no |
| <a name="input_realm_name"></a> [realm\_name](#input\_realm\_name) | The name of the used realm. | `string` | `"NexusAuthorizingRealm"` | no |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | The user id used by anonymous access. | `string` | `"anonymous"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_realm_name"></a> [realm\_name](#output\_realm\_name) | Realm name. |
| <a name="output_user_id"></a> [user\_id](#output\_user\_id) | User Id. |
<!-- END_TF_DOCS -->
