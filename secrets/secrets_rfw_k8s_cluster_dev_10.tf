module "rfw-dev-tls-k8s-dev-10" {
  source     = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/k8s_secrets?ref=RDO-792"
  providers  = {
    rancher2 = "rancher2.dev"
  }
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  env_number = "40"
  env_type   = "in2"
  app_code   = "6"
}

module "rfw-data-platform-api-mdds" {
  source     = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/mdds_secrets?ref=master"
  providers  = {
    rancher2 = "rancher2.dev"
  }
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  env_number = "40"
  env_type   = "in2"
  app_code   = "6"
}

module "on-prem-kafka-keytab1" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/kafka_secrets?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  env_number = "40"
  env_type   = "in2"
  app_code   = "6"
}

module "on-prem-kafka-keytab" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "onprem-kafka-keytab"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    keytab = "${base64encode(chomp(file("/run/secrets/tf/kafka/aws-dev-kafkaclient.keytab")))}"
  }
}

module "rfw-s3-bucket-user-access" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "s3-user-access-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    s3-access = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-1-s3-admin-access-id.txt")))}"
  }
}

module "rfw-s3-bucket-user-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "s3-user-secret-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    s3-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-1-s3-admin-access-secret")))}"
  }
}

module "dev-rfw-api-access-key" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "dev-rfw-api-access-key"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    dev-rfw-api-access-key = "${base64encode(chomp(file("/run/secrets/tf/rfw/dev-rfw-api-access-key")))}"
  }
}

module "dev-rfw-api-access-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "dev-rfw-api-access-secret"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    dev-rfw-api-access-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/dev-rfw-api-access-secret")))}"
  }
}

module "rfw-data-platform-api-access" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "data-platform-api-access-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    data-platform-access = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-2-data-platform-access-key")))}"
  }
}

module "rfw-data-platform-api-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "data-platform-api-secret-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    data-platform-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-2-data-platform-access-secret")))}"
  }
}

module "rfw-kafka-security-jks" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "rfw-dev-kafka-security-jks"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    kafka-security-jks = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-kafka-security-jks")))}"
  }
}

module "rfw-kafka-security-pwd" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "rfw-dev-kafka-security-pwd"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    kafka-security-pwd = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-kafka-security-pwd")))}"
  }
}

module "rfw-kafka-security-alias-pwd" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "rfw-dev-kafka-security-alias-pwd"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    kafka-security-alias-pwd = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-kafka-security-alias-pwd")))}"
  }
}

module "rfw-dev-okta-ipl-ui-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "rfw-dev-okta-ipl-ui-secret"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    okta-ipl-ui-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-okta-ipl-ui-secret")))}"
  }
}

module "rfw-dev-okta-svc-rnrk-core-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "rfw-dev-okta-svc-rnrk-core-secret"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    okta-svc-rnrk-core-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-okta-svc-rnrk-core-secret")))}"
  }
}


module "rfw-dev-okta-svc-rnrk-prds-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "rfw-dev-okta-svc-rnrk-prds-secret"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    okta-svc-rnrk-prds-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-okta-svc-rnrk-prds-secret")))}"
  }
}

module "rfw-dev-zephyr" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "rfw-dev-zephyr"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    zephyr-id = "${file("/run/secrets/tf/rfw/rfw-dev-zephyr-id")}"
    zephyr-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-zephyr-secret")))}"
  }
}

resource "rancher2_certificate" "rfw-dev-flink-tls-k8s-dev-10" {
  provider = "rancher2.dev"
  name = "rfw-dev-flink-tls-crt"
  description = "Flink TLS CRT for K8s-Dev-10 ingress"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  certs = "${chomp(file("/run/secrets/tf/rfw/rfw-dev-flink-tls-k8s-10.crt"))}"
  key = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-flink-tls-k8s-10.key")))}"
}

resource "rancher2_certificate" "rfw-dev-flink-pers-tls-k8s-dev-10" {
  provider = "rancher2.dev"
  name = "rfw-dev-flink-pers-tls-crt"
  description = "Flink-pers TLS CRT for K8s-Dev-10 ingress"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  certs = "${chomp(file("/run/secrets/tf/rfw/rfw-dev-flink-pers-tls-k8s-10.crt"))}"
  key = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-flink-pers-tls-k8s-10.key")))}"
}

module "rfw-dev-2-pgsql-pass" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "rfw-dev-2-pgsql-pass"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    password = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-2-pgsql-pass")))}"
  }
}

module "rfw-s3-sdp-bucket-user-access" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "s3-sdp-user-access-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    s3-access = "${base64encode(chomp(file("/run/secrets/tf/sdp/sdp-dev-1-risk-ro-access-key")))}"
  }
}

module "rfw-s3-sdp-bucket-user-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "s3-sdp-user-secret-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    s3-secret = "${base64encode(chomp(file("/run/secrets/tf/sdp/sdp-dev-1-risk-ro-secret-key")))}"
  }
}

resource "rancher2_certificate" "rfw-dev-app-tls-k8s-dev-10" {
  provider = "rancher2.dev"
  name = "rfw-dev-app-tls-crt"
  description = "App TLS CRT for K8s-Dev-10 ingress"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  certs = "${chomp(file("/run/secrets/tf/rfw/rfw-dev-app-tls.crt"))}"
  key = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-app-tls.key")))}"
}

module "rfw-data-platform-api-mdds-access" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "data-platform-api-mdds-access-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    data-platform-mdds-access = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-1-data-platform-mdds-access-key")))}"
  }
}

module "rfw-data-platform-api-mdds-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "data-platform-api-mdds-secret-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    data-platform-mdds-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-1-data-platform-mdds-access-secret")))}"
  }
}

module "rfw-s3-mdds-bucket-user-access" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "s3-mdds-user-access-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    s3-access-mdds = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-1-s3-mdds-admin-access-id.txt")))}"
  }
}

module "rfw-s3-mdds-bucket-user-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "s3-mddds-user-secret-key-1"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    s3-secret-mdds = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-1-s3-mdds-admin-access-secret")))}"
  }
}

module "rfw-dev-okta-svc-rnrk-mdds-secret" {
  source = "git::https://github.theocc.com/platform-org/tf-modules-app.git//risk_framework/secrets/?ref=master"
  providers = {
    rancher2 = "rancher2.dev"
  }
  name = "rfw-dev-okta-svc-rnrk-mdds-secret"
  project_id = "${module.riskframework_K8S_dev_10_project.project_id}"
  data = {
    okta-svc-rnrk-mdds-secret = "${base64encode(chomp(file("/run/secrets/tf/rfw/rfw-dev-okta-svc-rnrk-mdds-secret")))}"
  }
}
