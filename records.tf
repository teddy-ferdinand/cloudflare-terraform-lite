resource "cloudflare_record" "for_each_records" {
  for_each = var.record_list

  zone_id = var.cloudflare_configs["zone_id"]
  name    = each.value
  value   = var.cloudflare_target
  type    = "A"
  ttl     = 1
  proxied = true
}
resource "cloudflare_record" "for_each_records_mx" {
  for_each = var.mx_record_list

  zone_id  = var.cloudflare_configs["zone_id"]
  name     = var.cloudflare_configs["domain"]
  value    = each.value[0]
  type     = "MX"
  ttl      = 1
  priority = each.value[1]
}

resource "cloudflare_record" "caa" {
  zone_id = var.cloudflare_configs["zone_id"]
  name    = var.cloudflare_configs["domain"]
  data = {
    flags = "0"
    tag   = "issue"
    value = "letsencrypt.org"
  }
  type = "CAA"
  ttl  = 1
}