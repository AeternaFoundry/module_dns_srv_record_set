output "srv_record_sets_id" {
  description = "Map of id values across all srv_record_sets, keyed the same as var.srv_record_sets"
  value       = { for k, v in dns_srv_record_set.srv_record_sets : k => v.id }
}
output "srv_record_sets_name" {
  description = "Map of name values across all srv_record_sets, keyed the same as var.srv_record_sets"
  value       = { for k, v in dns_srv_record_set.srv_record_sets : k => v.name }
}
output "srv_record_sets_srv" {
  description = "Map of srv values across all srv_record_sets, keyed the same as var.srv_record_sets"
  value       = { for k, v in dns_srv_record_set.srv_record_sets : k => v.srv }
}
output "srv_record_sets_ttl" {
  description = "Map of ttl values across all srv_record_sets, keyed the same as var.srv_record_sets"
  value       = { for k, v in dns_srv_record_set.srv_record_sets : k => v.ttl }
}
output "srv_record_sets_zone" {
  description = "Map of zone values across all srv_record_sets, keyed the same as var.srv_record_sets"
  value       = { for k, v in dns_srv_record_set.srv_record_sets : k => v.zone }
}

