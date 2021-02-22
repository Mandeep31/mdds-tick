locals {
  secret_dir   = "/run/secrets/tf/kafka"
  secret_prefix = "${var.env_type}-${var.env_number}-${var.app_code}"
  keytab_tls_secret  = "aws-dev-kafkaclient"
}

resource "rancher2_secret" "on-prem-kafka-keytab" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-onprem-kafka-keytab"
  description   = "Rancher secret for on prem kafka keytab"
  project_id    = "${var.project_id}"
  data = {
    keytab = "${base64encode(chomp(file("${local.secret_dir}/${local.secret_prefix}/${local.keytab_tls_secret}.keytab")))}"
  }
}
