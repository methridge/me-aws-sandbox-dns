# Terraform module to create AWS DNS zone

This module creates a AWS DNS Zone with DNSSec.

_NOTE:_ Using DNSSEC requires that the region be `us-east-1`

## Deploying

- Create `terraform.tfvars` file

```hcl
environment = "sandbox"
region      = "us-east-1"
username    = "awesomeuser"
zone_name   = "aws.awesomedomain.com"
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | 3.57.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_key.dns_kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_route53_hosted_zone_dnssec.sandbox_dnssec](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_hosted_zone_dnssec) | resource |
| [aws_route53_key_signing_key.sandbox_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_key_signing_key) | resource |
| [aws_route53_zone.sandbox](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment name / tag | `string` | n/a | yes |
| username | User name for access and to prefix all resources. ex: awesomeuser | `string` | n/a | yes |
| zone\_name | Your public DNS Zone. ex: aws.awesomedomain.com | `string` | n/a | yes |
| region | AWS Region | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| sandbox\_dnszone\_arn | DNS Zone value |
| sandbox\_dnszone\_name | DNS Zone name |
| zone\_ds\_record | DS record value for DNSSEC of hosted zone |
| zone\_name\_servers | Name servers for hosted zone |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
