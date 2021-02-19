resource "rancher2_secret" "rfw-data-platform-api-mdds-access" {
  name          = "${var.env_number}-${var.env_type}-${var.app_code}-mdds-access-key"
  description   = "Terraform access key for data platform api"
  project_id    = "${var.project_id}"
  data = {
    data-platform-mdds-access = "${base64encode(chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-data-platform-mdds-access-key")))}"
  }
}

resource "rancher2_secret" "rfw-data-platform-api-mdds-secret" {
  name          = "${var.env_number}-${var.env_type}-${var.app_code}-mdds-secret-key"
  description   = "Terraform secret for data platform api"
  project_id    = "${var.project_id}"
  data = {
    data-platform-mdds-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-data-platform-mdds-access-secret")))}"
  }
}

resource "rancher2_secret" "rfw-s3-mdds-bucket-user-access" {
  name          = "${var.env_number}-${var.env_type}-${var.app_code}-s3-mdds-user-access-key"
  description   = "Terraform access key for mdds S3 Bucket User"
  project_id    = "${var.project_id}"
  data = {
    s3-access-mdds = "${base64encode(chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-s3-mdds-admin-access-id.txt")))}"
  }
}

resource "rancher2_secret" "rfw-s3-mdds-bucket-user-secret" {
  name          = "${var.env_number}-${var.env_type}-${var.app_code}-s3-mddds-user-secret-key"
  description   = "Terraform secret for mdds S3 Bucket User"
  project_id    = "${var.project_id}"
  data = {
    s3-secret-mdds = "${base64encode(chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-s3-mdds-admin-access-secret")))}"
  }
}


resource "rancher2_secret" "rfw-dev-okta-svc-rnrk-mdds-secret" {
  name          = "${var.env_number}-${var.env_type}-${var.app_code}-dev-okta-svc-rnrk-mdds-secret"
  description   = "Okta secret for svc risk mdds"
  project_id    = "${var.project_id}"
  data = {
    okta-svc-rnrk-mdds-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-dev-okta-svc-rnrk-mdds-secret")))}"
  }
}
