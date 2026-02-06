terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = ">= 1.36.0"
    }
  }
}

provider "huaweicloud" {
  assume_role {
    agency_name = var.agency_name
    domain_name = var.domain_name
  }
}
