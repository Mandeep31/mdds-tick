locals {
  secret_dir_kafka   = "/run/secrets/tf/kafka"
  secret_dir_rfw = "/run/secrets/tf/rfw"
  secret_prefix = "${var.env_type}-${var.env_number}-${var.app_code}"
}

resource "rancher2_secret" "on-prem-kafka-keytab" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-onprem-kafka-keytab"
  description   = "Rancher secret for on prem kafka keytab"
  project_id    = "${var.project_id}"
  data = {
    keytab = "${base64encode(chomp(file("${local.secret_dir_kafka}/${local.secret_prefix}/aws-dev-kafkaclient.keytab")))}"
  }
}

resource "rancher2_secret" "rfw-kafka-security-jks" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-rfw-dev-kafka-security-jks"
  description   = "Rancher secret for kafka security jks"
  project_id    = "${var.project_id}"
  data = {
    kafka-security-jks = "${base64encode(chomp(file("${local.secret_dir_rfw}/${local.secret_prefix}/rfw-dev-kafka-security-jks")))}"
  }
}

resource "rancher2_secret" "rfw-kafka-security-pwd" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-rfw-dev-kafka-security-pwd"
  description   = "Rancher secret for kafka security pwd"
  project_id    = "${var.project_id}"
  data = {
    kafka-security-pwd = "${base64encode(chomp(file("${local.secret_dir_rfw}/${local.secret_prefix}/rfw-dev-kafka-security-pwd")))}"
  }
}

resource "rancher2_secret" "rfw-kafka-security-alias-pwd" {
  name = "${var.env_number}-${var.env_type}-${var.app_code}-rfw-dev-kafka-security-alias-pwd"
  description   = "Rancher secret for kafka security alias pwd"
  project_id    = "${var.project_id}"
  data = {
    kafka-security-alias-pwd = "${base64encode(chomp(file("${local.secret_dir_rfw}/${local.secret_prefix}/rfw-dev-kafka-security-pwd")))}"
  }
}
