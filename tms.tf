resource "huaweicloud_tms_tags" "baseline_tags" {
  provider = huaweicloud.child

  tags {
    key   = "foo"
    value = "bar"
  }
}

