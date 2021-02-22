locals {
  secret_dir   = "/run/secrets/tf/rfw"
  secret_prefix = "${var.env_type}-${var.env_number}-${var.app_code}"
  flink_tls_secret  = "rfw-dev-flink-tls"
  flink_pers_tls_secret  = "rfw-dev-flink-pers-tls"
  dev_app_tls_secret  = "rfw-dev-app-tls"
}

resource "rancher2_certificate" "rfw-dev-flink-tls-k8s-dev-10" {
  name = "${local.secret_prefix}-${local.flink_tls_secret}-crt"
  description = "Flink TLS CRT for K8s-Dev-10 ingress"
  project_id    = "${var.project_id}"
  certs = "${chomp(file("${secret_dir}/${secret_prefix}-${flink_tls_secret}.crt"))}"
  key = "${base64encode(chomp(file("${secret_dir}/${secret_prefix}-${flink_tls_secret}.key")))}"
}

resource "rancher2_certificate" "rfw-dev-flink-pers-tls-k8s-dev-10" {
  name = "${local.secret_prefix}-${local.flink_pers_tls_secret}-crt"
  description = "Flink-pers TLS CRT for K8s-Dev-10 ingress"
  project_id    = "${var.project_id}"
  certs = "${chomp(file("${secret_dir}/${secret_prefix}-${flink_pers_tls_secret}.crt"))}"
  key = "${base64encode(chomp(file("${secret_dir}/${secret_prefix}-${flink_pers_tls_secret}.key")))}"
}


resource "rancher2_certificate" "rfw-dev-app-tls-k8s-dev-10" {
  name = "${local.secret_prefix}-${local.dev_app_tls_secret}-crt"
  description = "App TLS CRT for K8s-Dev-10 ingress"
  project_id    = "${var.project_id}"
  certs = "${chomp(file("${secret_dir}/${secret_prefix}-${dev_app_tls_secret}.crt"))}"
  key = "${base64encode(chomp(file("${secret_dir}/${secret_prefix}-${dev_app_tls_secret}.key")))}"
}
