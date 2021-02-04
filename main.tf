resource "rancher2_secret" "default" {
  name          = "${var.name}"
  description   = "Rancher secret ${var.name} created by tf-app-modules risk_framework"
  project_id    = "${var.project_id}"
  data          = "${var.data}"
}
