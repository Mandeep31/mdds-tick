locals {
  secret_dir = "/run/secrets/tf/rfw"
  secret_prefix = "${var.env_type}-${var.env_number}-${var.app_code}"
}

resource "rancher2_secret" "rfw-dev-okta-ipl-ui-secret" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-rfw-dev-okta-ipl-ui-secret"
  description   = "Rancher secret for rfw-dev-okta-ipl-ui-secret"
  project_id    = "${var.project_id}"
  data = {
    okta-ipl-ui-secret = "${base64encode(chomp(file("${local.secret_dir}/${local.secret_prefix}/rfw-dev-okta-ipl-ui-secret")))}"
  }
}

resource "rancher2_secret" "rfw-dev-okta-svc-rnrk-core-secret" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-rfw-dev-okta-svc-rnrk-core-secret"
  description   = "Rancher secret for rfw-dev-okta-svc-rnrk-core-secret"
  project_id    = "${var.project_id}"
  data = {
    okta-svc-rnrk-core-secret = "${base64encode(chomp(file("${local.secret_dir}/${local.secret_prefix}/rfw-dev-okta-svc-rnrk-core-secret")))}"
  }
}

resource "rancher2_secret" "rfw-dev-okta-svc-rnrk-prds-secret" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-rfw-dev-okta-svc-rnrk-prds-secret"
  description   = "Rancher secret for rfw-dev-okta-svc-rnrk-prds-secret"
  project_id    = "${var.project_id}"
  data = {
    okta-svc-rnrk-prds-secret = "${base64encode(chomp(file("${local.secret_dir}/${local.secret_prefix}/rfw-dev-okta-svc-rnrk-prds-secret")))}"
  }
}


