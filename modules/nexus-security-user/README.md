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
| [nexus_security_user.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | The email address associated with the user. | `string` | n/a | yes |
| <a name="input_firstname"></a> [firstname](#input\_firstname) | The first name of the user. | `string` | n/a | yes |
| <a name="input_lastname"></a> [lastname](#input\_lastname) | The last name of the user. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | The password for the user. | `string` | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | The roles which the user has been assigned within Nexus. | `set(string)` | `[]` | no |
| <a name="input_status"></a> [status](#input\_status) | The user's status, e.g. active or disabled. | `string` | `""` | no |
| <a name="input_userid"></a> [userid](#input\_userid) | The userid which is required for login. This value cannot be changed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_userid"></a> [userid](#output\_userid) | User Id. |

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
| [nexus_security_user.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | The email address associated with the user. | `string` | n/a | yes |
| <a name="input_firstname"></a> [firstname](#input\_firstname) | The first name of the user. | `string` | n/a | yes |
| <a name="input_lastname"></a> [lastname](#input\_lastname) | The last name of the user. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | The password for the user. | `string` | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | The roles which the user has been assigned within Nexus. | `set(string)` | `[]` | no |
| <a name="input_status"></a> [status](#input\_status) | The user's status, e.g. active or disabled. | `string` | `""` | no |
| <a name="input_userid"></a> [userid](#input\_userid) | The userid which is required for login. This value cannot be changed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_userid"></a> [userid](#output\_userid) | User Id. |
<!-- END_TF_DOCS -->
