variable "srv_record_sets" {
  description = <<EOT
Map of srv_record_sets, attributes below
Required:
    - name
    - zone
Optional:
    - ttl
    - srv (block):
        - port (required)
        - priority (required)
        - target (required)
        - weight (required)
EOT

  type = map(object({
    name = string
    zone = string
    ttl  = optional(number)
    srv = optional(list(object({
      port     = number
      priority = number
      target   = string
      weight   = number
    })))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

