locals {
  secret_dir = "/run/secrets/tf/rfw"
  secret_prefix = "${var.env_type}-${var.env_number}-${var.app_code}"
}

resource "rancher2_secret" "dev-rfw-api-access-key" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-dev-rfw-api-access-key"
  description   = "Rancher secret for dev-rfw-api-access-key"
  project_id    = "${var.project_id}"
  data = {
    dev-rfw-api-access-key = "${base64encode(chomp(file("${local.secret_dir}/${local.secret_prefix}/dev-rfw-api-access-key")))}"
  }
}

resource "rancher2_secret" "dev-rfw-api-access-secret" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-dev-rfw-api-access-secret"
  description   = "Rancher secret for dev-rfw-api-access-secret"
  project_id    = "${var.project_id}"
  data = {
    dev-rfw-api-access-secret = "${base64encode(chomp(file("${local.secret_dir}/${local.secret_prefix}/dev-rfw-api-access-secret")))}"
  }
}

resource "rancher2_secret" "rfw-data-platform-api-access" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-data-platform-api-access-key-1"
  description   = "Rancher secret for rfw-data-platform-api-access"
  project_id    = "${var.project_id}"
  data = {
    data-platform-access = "${base64encode(chomp(file("${local.secret_dir}/${local.secret_prefix}/rfw-dev-2-data-platform-access-key")))}"
  }
}

resource "rancher2_secret" "rfw-data-platform-api-secret" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-data-platform-api-secret-key-1"
  description   = "Rancher secret for rfw-data-platform-api-secret"
  project_id    = "${var.project_id}"
  data = {
    data-platform-secret = "${base64encode(chomp(file("${local.secret_dir}/${local.secret_prefix}/rfw-dev-2-data-platform-access-secret")))}"
  }
}

