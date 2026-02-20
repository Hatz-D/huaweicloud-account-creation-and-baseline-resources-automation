resource "huaweicloud_organizations_account" "account"{
  provider = huaweicloud.root

  name  = var.domain_name
  email = var.email_address
}
