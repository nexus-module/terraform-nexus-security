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
| [nexus_security_role.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of this role. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the role. | `string` | n/a | yes |
| <a name="input_privileges"></a> [privileges](#input\_privileges) | The privileges of this role. | `set(string)` | `[]` | no |
| <a name="input_roleid"></a> [roleid](#input\_roleid) | The id of the role. | `string` | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | The roles of this role. | `set(string)` | `[]` | no |

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
| [nexus_security_role.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of this role. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the role. | `string` | n/a | yes |
| <a name="input_privileges"></a> [privileges](#input\_privileges) | The privileges of this role. | `set(string)` | `[]` | no |
| <a name="input_roleid"></a> [roleid](#input\_roleid) | The id of the role. | `string` | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | The roles of this role. | `set(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |
<!-- END_TF_DOCS -->
