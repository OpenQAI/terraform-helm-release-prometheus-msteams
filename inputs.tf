# Helm Chart
variable "helm_chart_version" {
  default = "0.5.1"
}
variable "helm_chart_name" {
  default = "prometheus_msteams"
}
variable "helm_chart_namespace" {
  default = "monitoring"
}
variable "helm_chart_image_tag" {
  default = "v1.3.5"
}

# Microsoft Teams webhooks
variable "msteams-critical-alerts-webhook" {
  default = "https://msteams-critical-alerts-webhook"
}
variable "msteams-warning-alerts-webhook" {
  default = "https://msteams-warning-alerts-webhook"
}
variable "msteams-info-alerts-webhook" {
  default = "https://msteams-info-alerts-webhook"
}