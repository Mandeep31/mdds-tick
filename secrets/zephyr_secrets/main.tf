locals {
  secret_dir = "/run/secrets/tf/rfw"
  secret_prefix = "${var.env_type}-${var.env_number}-${var.app_code}"
}

resource "rancher2_secret" "rfw-dev-zephyr" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-rfw-dev-zephyr"
  description   = "Rancher secret for rfw-dev-zephyr"
  project_id    = "${var.project_id}"
 data = {
    zephyr-id = "${file("${local.secret_dir}/${local.secret_prefix}/rfw-dev-zephyr-id")}"
    zephyr-secret = "${base64encode(chomp(file("${local.secret_dir}/${local.secret_prefix}/rfw-dev-zephyr-secret")))}"
  }
}
