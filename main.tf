resource "rancher2_secret" "rfw-data-platform-api-mdds-access1" {
  name          = "data-platform-api-mdds-access-key-2"
  description   = "Terraform access key for data platform api"
  project_id    = "${var.project_id}"
  data = {
    data-platform-mdds-access = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-1-data-platform-mdds-access-key")))}"
  }
}
