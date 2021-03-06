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
      helm_chart_image_tag = var.helm_chart_image_tag
      msteams-critical-alerts-webhook = var.msteams-critical-alerts-webhook
      msteams-warning-alerts-webhook  = var.msteams-warning-alerts-webhook
      msteams-info-alerts-webhook     = var.msteams-info-alerts-webhook
    })
  ]
}

