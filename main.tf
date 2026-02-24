resource "fortimanager_object_firewall_address" "address" {
  for_each = var.address_objects

  adom    = var.adom
  name    = each.key
  subnet  = each.value.subnet
  type    = each.value.type
  color   = each.value.color
  comment = each.value.comment
  tags    = each.value.tags
}
