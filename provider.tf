terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 2.0"
    }
  }
}

provider "cloudflare" {
  email   = var.cloudflare_configs["email"]
  api_key = var.cloudflare_configs["api_key"]
}