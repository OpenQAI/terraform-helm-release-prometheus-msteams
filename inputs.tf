# Helm Chart
variable "helm_chart_version" {
  description = "Helm chart version"
  default = "0.5.1"
}
variable "helm_chart_name" {
  description = "Helm chart name"
  default = "prometheus_msteams"
}
variable "helm_chart_namespace" {
  description = "Kubernetes namespace to deploy"
  default = "monitoring"
}
variable "helm_chart_image_tag" {
  description = "Prometheus_msteams helm chart image tag "
  default = "v1.3.5"
}

# Microsoft Teams webhooks
variable "msteams-critical-alerts-webhook" {
  description = "Teams channel for sending critical alerts"
  default = "https://msteams-critical-alerts-webhook"
}
variable "msteams-warning-alerts-webhook" {
  description = "Teams channel for sending warning alerts"
  default = "https://msteams-warning-alerts-webhook"
}
variable "msteams-info-alerts-webhook" {
  description = "Teams channel for sending info alerts"
  default = "https://msteams-info-alerts-webhook"
}