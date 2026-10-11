variable "core_ipv6s_lookup" {
  description = <<EOT
Map of core_ipv6s_lookup, attributes below
Optional:
    - ip_address
    - subnet_id
    - vnic_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    ip_address = optional(string)
    subnet_id  = optional(string)
    vnic_id    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

