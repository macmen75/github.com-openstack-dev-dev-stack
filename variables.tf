variable "fmg_host" {
  description = "FortiManager hostname or IP address"
  type        = string
}

variable "fmg_api_token" {
  description = "FortiManager API token for authentication"
  type        = string
  sensitive   = true
}

variable "fmg_insecure" {
  description = "Allow insecure HTTPS connections (for self-signed certificates)"
  type        = bool
  default     = true
}

variable "adom" {
  description = "Administrative Domain (ADOM) name"
  type        = string
  default     = "root"
}

variable "address_objects" {
  description = "Map of address objects to create"
  type = map(object({
    subnet  = string
    type    = string
    color   = optional(number, 0)
    comment = optional(string, "")
    tags    = optional(list(string), [])
  }))
  default = {}
}
