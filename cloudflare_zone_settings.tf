resource "cloudflare_zone_settings_override" "zone_settings" {
  zone_id = var.cloudflare_configs["zone_id"]
  settings {
    always_online            = "on"
    always_use_https         = "on"
    automatic_https_rewrites = "on"
    brotli                   = "on"
    browser_cache_ttl        = 14400
    browser_check            = "on"
    cache_level              = "aggressive"
    challenge_ttl            = 1800
    development_mode         = "off"
    email_obfuscation        = "on"
    hotlink_protection       = "off"
    http3                    = "on"
    ip_geolocation           = "on"
    ipv6                     = "on"
    max_upload               = 100
    min_tls_version          = "1.2"
    minify {
      css  = "on"
      html = "on"
      js   = "off"
    }

    mobile_redirect {
      mobile_subdomain = ""
      status           = "off"
      strip_uri        = false
    }

    opportunistic_encryption = "on"
    opportunistic_onion      = "on"
    privacy_pass             = "on"
    pseudo_ipv4              = "off"
    rocket_loader            = "on"
    security_header {
      enabled            = true
      include_subdomains = true
      max_age            = 31536000
      nosniff            = true
      preload            = true
    }

    security_level      = "medium"
    server_side_exclude = "on"
    ssl                 = "full"
    tls_1_3             = "zrt"
    tls_client_auth     = "off"
    websockets          = "on"
    zero_rtt            = "on"
  }
}