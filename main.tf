terraform {
  cloud {
    organization = "tomiplaz"
    workspaces {
      name = "profile-iac"
    }
  }
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable do_token {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "profile-iac" {
  image  = "debian-12-x64"
  name   = "profile-iac"
  region = "fra1"
  size   = "s-1vcpu-512mb-10gb"
}

