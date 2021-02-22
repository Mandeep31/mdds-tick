locals {
  secret_dir = "/run/secrets/tf/rfw"
  secret_prefix = "${var.env_type}-${var.env_number}-${var.app_code}"
}

resource "rancher2_secret" "rfw-dev-2-pgsql-pass" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-rfw-dev-2-pgsql-pass"
  description   = "Rancher secret for rfw-dev-2-pgsql-pass"
  project_id    = "${var.project_id}"
 data = {
    password = "${base64encode(chomp(file("${local.secret_dir_rfw}/${local.secret_prefix}/rfw-dev-2-pgsql-pass")))}"
  }
}

