fmg_host    = "fortimanager.example.com"  # Update with your FMG hostname/IP
fmg_insecure = true                       # Set to false with valid certificates

address_objects = {
  "Office-Network" = {
    subnet  = "192.168.1.0/24"
    type    = "ipmask"
    color   = 3
    comment = "Office network address object"
    tags    = ["office", "internal"]
  }

  "Remote-Office" = {
    subnet  = "10.1.0.0/8"
    type    = "ipmask"
    color   = 5
    comment = "Remote office network"
    tags    = ["remote", "vpn"]
  }

  "DMZ-Network" = {
    subnet  = "172.16.0.0/12"
    type    = "ipmask"
    color   = 7
    comment = "DMZ network segment"
    tags    = ["dmz", "public"]
  }
}

adom = "root"  # Change if using different ADOM
