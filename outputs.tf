output "core_ipv6s_lookup_id" {
  description = "Map of id values across all core_ipv6s_lookup, keyed the same as var.core_ipv6s_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_ipv6s.core_ipv6s_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_ipv6s_lookup_filter" {
  description = "Map of filter values across all core_ipv6s_lookup, keyed the same as var.core_ipv6s_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_ipv6s.core_ipv6s_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_ipv6s_lookup_ip_address" {
  description = "Map of ip_address values across all core_ipv6s_lookup, keyed the same as var.core_ipv6s_lookup except keys with no ip_address are omitted"
  value       = { for k, v in data.oci_core_ipv6s.core_ipv6s_lookup : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "core_ipv6s_lookup_ipv6s" {
  description = "Map of ipv6s values across all core_ipv6s_lookup, keyed the same as var.core_ipv6s_lookup except keys with no ipv6s are omitted"
  value       = { for k, v in data.oci_core_ipv6s.core_ipv6s_lookup : k => v.ipv6s if v.ipv6s != null && length(v.ipv6s) > 0 }
}
output "core_ipv6s_lookup_subnet_id" {
  description = "Map of subnet_id values across all core_ipv6s_lookup, keyed the same as var.core_ipv6s_lookup except keys with no subnet_id are omitted"
  value       = { for k, v in data.oci_core_ipv6s.core_ipv6s_lookup : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "core_ipv6s_lookup_vnic_id" {
  description = "Map of vnic_id values across all core_ipv6s_lookup, keyed the same as var.core_ipv6s_lookup except keys with no vnic_id are omitted"
  value       = { for k, v in data.oci_core_ipv6s.core_ipv6s_lookup : k => v.vnic_id if v.vnic_id != null && length(v.vnic_id) > 0 }
}

