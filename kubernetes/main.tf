terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.53.0"
    }

    k0s = {
      source  = "danielskowronski/k0s"
      version = "0.2.2-rc1"
    }
  }
}

provider "openstack" {
  cloud    = "openstack"
  insecure = true
}

provider "k0s" {}
