resource "cloudflare_page_rule" "cache_rss" {
  zone_id  = var.cloudflare_zone_id
  target   = "https://example.com/rss/"
  priority = 1
  status   = "active"
  actions {
    disable_security  = true
    browser_cache_ttl = 43200
    cache_level       = "cache_everything"
    edge_cache_ttl    = 43200
  }
}