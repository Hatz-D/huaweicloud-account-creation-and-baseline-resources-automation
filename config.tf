resource "huaweicloud_rms_resource_recorder" "tracker" {
  provider = huaweicloud.child
  agency_name = "rms_tracker_agency"

  selector {
    all_supported = true
  }

  obs_channel {
    bucket = var.bucket_name
    region = var.region
  }
}
