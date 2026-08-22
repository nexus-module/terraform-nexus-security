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
| [nexus_security_user_token.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_user_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Activate the feature of user tokens. | `bool` | n/a | yes |
| <a name="input_protect_content"></a> [protect\_content](#input\_protect\_content) | Require user tokens for repository authentication. This does not effect UI access. | `bool` | `null` | no |

## Outputs

No outputs.

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
| [nexus_security_user_token.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/security_user_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Activate the feature of user tokens. | `bool` | n/a | yes |
| <a name="input_protect_content"></a> [protect\_content](#input\_protect\_content) | Require user tokens for repository authentication. This does not effect UI access. | `bool` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
