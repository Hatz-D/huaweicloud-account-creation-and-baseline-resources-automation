resource "huaweicloud_organizations_account" "account"{
  name  = var.domain_name
  email = var.email_address
}
