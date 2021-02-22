locals {
  secret_dir_sdp = "/run/secrets/tf/sdp"
  secret_prefix = "${var.env_type}-${var.env_number}-${var.app_code}"
}

resource "rancher2_secret" "rfw-s3-sdp-bucket-user-access" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-s3-sdp-user-access-key-1"
  description   = "Rancher secret for s3-sdp-user-access-key-1"
  project_id    = "${var.project_id}"
  data = {
    s3-access = "${base64encode(chomp(file("${local.secret_dir_sdp}/${local.secret_prefix}/sdp-dev-1-risk-ro-access-key")))}"
  }
}

resource "rancher2_secret" "rfw-s3-sdp-bucket-user-secret" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-s3-sdp-user-secret-key-1"
  description   = "Rancher secret for s3-sdp-user-secret-key-1"
  project_id    = "${var.project_id}"
  data = {
    s3-secret = "${base64encode(chomp(file("${local.secret_dir_sdp}/${local.secret_prefix}/sdp-dev-1-risk-ro-secret-key")))}"
  }
}
