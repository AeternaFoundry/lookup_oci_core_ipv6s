data "oci_core_ipv6s" "core_ipv6s_lookup" {
  for_each = var.core_ipv6s_lookup

  ip_address = each.value.ip_address
  subnet_id  = each.value.subnet_id
  vnic_id    = each.value.vnic_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

