resource "cloudflare_access_rule" "dedicated_server" {
  notes = "Dedicated server"
  mode  = "whitelist"
  configuration = {
    target = "ip"
    value  = var.cloudflare_target
  }
}