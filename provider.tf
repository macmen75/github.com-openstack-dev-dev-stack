terraform {
  required_version = ">= 1.5.0"
  required_providers {
    fortimanager = {
      source  = "fortinetdev/fortimanager"
      version = "~> 2.28"
    }
  }
}

provider "fortimanager" {
  hostname = var.fmg_host
  token    = var.fmg_api_token
  insecure = var.fmg_insecure
}
