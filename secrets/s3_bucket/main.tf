locals {
  secret_dir_rfw = "/run/secrets/tf/rfw"
  secret_prefix = "${var.env_type}-${var.env_number}-${var.app_code}"
}

resource "rancher2_secret" "rfw-s3-bucket-user-access" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-s3-user-access-key-1"
  description   = "Rancher secret for s3-bucket-user-access"
  project_id    = "${var.project_id}"
  data = {
    s3-access = "${base64encode(chomp(file("${local.secret_dir_rfw}/${local.secret_prefix}/rfw-dev-1-s3-admin-access-id.txt")))}"
  }
}

resource "rancher2_secret" "rfw-s3-bucket-user-secret" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-s3-user-secret-key-1"
  description   = "Rancher secret for s3-bucket-user-secret"
  project_id    = "${var.project_id}"
  data = {
    s3-secret = "${base64encode(chomp(file("${local.secret_dir_rfw}/${local.secret_prefix}/rfw-dev-1-s3-admin-access-secret")))}"
  }
}

