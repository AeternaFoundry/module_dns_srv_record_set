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
}

