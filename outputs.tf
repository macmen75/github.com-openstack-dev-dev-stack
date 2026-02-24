output "address_objects_created" {
  description = "List of created address objects"
  value       = [for obj in fortimanager_object_firewall_address.address : obj.name]
}

output "address_objects_details" {
  description = "Details of all created address objects"
  value = {
    for name, obj in fortimanager_object_firewall_address.address : name => {
      subnet  = obj.subnet
      type    = obj.type
      color   = obj.color
      comment = obj.comment
    }
  }
}
