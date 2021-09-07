output "zone_name_servers" {
  description = "Name servers for hosted zone"
  value       = aws_route53_zone.sandbox.name_servers
}

output "zone_ds_record" {
  description = "DS record value for DNSSEC of hosted zone"
  value       = aws_route53_key_signing_key.sandbox_key.ds_record
}

output "sandbox_dnszone_arn" {
  description = "DNS Zone value"
  value       = aws_route53_zone.sandbox.arn
}

output "sandbox_dnszone_name" {
  description = "DNS Zone name"
  value       = aws_route53_zone.sandbox.name
}
