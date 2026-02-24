fmg_host    = "52.221.184.79"  # Update with your FMG hostname/IP
fmg_api_token = draycqs6kb4m5mqpwyfkygtgiojedaeg
fmg_insecure = true                       # Set to false with valid certificates

address_objects = {
  "Office-Network" = {
    subnet  = "192.168.1.0/24"
    type    = "ipmask"
    color   = 3
    comment = "Office network address object"
  }

  "Remote-Office" = {
    subnet  = "10.0.0.0/8"
    type    = "ipmask"
    color   = 5
    comment = "Remote office network"
  }

  "DMZ-Network" = {
    subnet  = "172.16.0.0/12"
    type    = "ipmask"
    color   = 7
    comment = "DMZ network segment"
  }
}

adom = "root"  # Change if using different ADOM
