variable "cloudflare_configs" {
  description = "Cloudflare API configuration"
  type        = map(any)
  default = {
    "email"   = "myaweseomemail@mymail.com"
    "api_key" = "my_api_key"
    "zone_id" = "my_zone_id"
    "domain"  = "example.com"
  }
}

variable "cloudflare_target" {
  description = "IP address protected by Cloudflare"
  type        = string
}

variable "record_list" {
  description = "Record list to deploy to Cloudflare"
  type        = set(string)
  default = [
    "example.com",
    "www",
    "backoffice"
  ]
}

variable "mx_record_list" {
  description = "MX Record list to deploy to Cloudflare"
  type        = map(any)
  default = {
    "dns1" = ["mx1.mail.ovh.net", 1]
    "dns2" = ["mx2.mail.ovh.net", 5]
    "dns3" = ["mx3.mail.ovh.net", 100]
  }
}