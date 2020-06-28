terraform {
  required_version = ">= 0.12.0"
}

resource "helm_release" "prometheus-msteams" {
  name       = var.helm_chart_name
  repository = "https://prometheus-msteams.github.io/helm-chart/"
  chart      = "prometheus-msteams"
  version    = var.helm_chart_version
  namespace  = var.helm_chart_namespace

  values = [
    templatefile("${path.module}/prometheus_msteams_values.tpl", {
      msteams-stag-critical-webhook = var.msteams-critical-alerts-webhook
      msteams-stag-warning-webhook  = var.msteams-warning-alerts-webhook
      msteams-stag-info-webhook     = var.msteams-info-alerts-webhook
    })
  ]
}

