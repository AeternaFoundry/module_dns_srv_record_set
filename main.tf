resource "dns_srv_record_set" "srv_record_sets" {
  for_each = var.srv_record_sets

  name = each.value.name
  zone = each.value.zone
  ttl  = each.value.ttl

  dynamic "srv" {
    for_each = each.value.srv != null ? each.value.srv : []
    content {
      port     = srv.value.port
      priority = srv.value.priority
      target   = srv.value.target
      weight   = srv.value.weight
    }
  }
}

