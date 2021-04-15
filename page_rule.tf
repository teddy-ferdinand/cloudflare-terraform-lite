resource "cloudflare_page_rule" "cache_rss_tfe_fr" {
  zone_id  = var.cloudflare_configs["zone_id"]
  target   = "https://${var.cloudflare_configs["domain"]}/rss/"
  priority = 1
  status   = "active"
  actions {
    disable_security  = true
    browser_cache_ttl = 43200
    cache_level       = "cache_everything"
    edge_cache_ttl    = 43200
  }
}