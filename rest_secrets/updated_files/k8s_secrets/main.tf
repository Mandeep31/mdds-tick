resource "rancher2_certificate" "rfw-dev-flink-tls-k8s-dev-10" {
  name = "${var.env_type}-${var.env_number}-${var.app_code}-rfw-dev-flink-tls-crt"
  description = "Flink TLS CRT for K8s-Dev-10 ingress"
  project_id    = "${var.project_id}"
  certs = "${chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-${var.app_code}-rfw-dev-flink-tls-k8s-10.crt"))}"
  key = "${base64encode(chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-${var.app_code}-rfw-dev-flink-tls-k8s-10.key")))}"
}

resource "rancher2_certificate" "rfw-dev-flink-pers-tls-k8s-dev-10" {
  name = "${var.env_type}-${var.env_number}-${var.app_code}-rfw-dev-flink-pers-tls-crt"
  description = "Flink-pers TLS CRT for K8s-Dev-10 ingress"
  project_id    = "${var.project_id}"
  certs = "${chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-${var.app_code}-rfw-dev-flink-pers-tls-k8s-10.crt"))}"
  key = "${base64encode(chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-${var.app_code}-rfw-dev-flink-pers-tls-k8s-10.key")))}"
}


resource "rancher2_certificate" "rfw-dev-app-tls-k8s-dev-10" {
  name = "${var.env_type}-${var.env_number}-${var.app_code}-rfw-dev-app-tls-crt"
  description = "App TLS CRT for K8s-Dev-10 ingress"
  project_id    = "${var.project_id}"
  certs = "${chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-${var.app_code}-rfw-dev-app-tls.crt"))}"
  key = "${base64encode(chomp(file("/run/secrets/tf/rfw/${var.env_type}-${var.env_number}-${var.app_code}-rfw-dev-app-tls.key")))}"
}
