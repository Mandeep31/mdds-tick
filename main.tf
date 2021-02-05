resource "rancher2_secret" "default" {
  name          = "${var.name}"
  description   = "Terraform key created for ${var.name}"
  project_id    = "${var.project_id}"
  data          = "${var.data}"
}
