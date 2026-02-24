terraform {
  required_providers {
    fortimanager = {
      source  = "fortinetdev/fortimanager"
      version = "1.9.0"
    }
  }
}

provider "fortimanager" {
  hostname = var.fmg_host
  token    = var.fmg_token
  insecure = "true"
  scopetype = "adom"
  adom      = "root"
}

variable "fmg_host" { type = string }
variable "fmg_token" { type = string }
