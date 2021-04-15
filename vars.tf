# Cloudflare API access configuration
variable "cloudflare_email" {
  type = string
}
variable "cloudflare_api_key" {
  type = string
}
variable "cloudflare_zone_id" {
  type = string
}
variable "cloudflare_domain" {
  type = string
}


# Deployment configuration
variable "record_list" {
  type = set(string)
  default = [
    "example.com",
    "www",
    "backoffice"
  ]
}

variable "mx_record_list" {
  default = {
    "dns1" = ["mx1.mail.ovh.net", 1]
    "dns2" = ["mx2.mail.ovh.net", 5]
    "dns3" = ["mx3.mail.ovh.net", 100]
  }
}

variable "cloudflare_target" {
  type = string
}
