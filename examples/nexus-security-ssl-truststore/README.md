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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nexus_security_ssl_truststore"></a> [nexus\_security\_ssl\_truststore](#module\_nexus\_security\_ssl\_truststore) | ../../modules/nexus-security-ssl-truststore | n/a |

## Resources

| Name | Type |
|------|------|
| [nexus_security_ssl.ldap_cert](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/data-sources/security_ssl) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fingerprint"></a> [fingerprint](#output\_fingerprint) | The fingerprint of the resource. |
<!-- END_TF_DOCS -->
