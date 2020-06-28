# Reference https://github.com/prometheus-msteams/prometheus-msteams/tree/master/chart/prometheus-msteams

image:
  repository: quay.io/prometheusmsteams/prometheus-msteams
  tag: ${helm_chart_image_tag}

connectors:
# ALERTS
# in alertmanager, this will be used as http://prometheus-msteams:2000/alerts-critical
  - alerts-critical: ${msteams-critical-alerts-webhook}

# in alertmanager, this will be used as http://prometheus-msteams:2000/alerts-warning
  - alerts-warning: ${msteams-warning-alerts-webhook}

# in alertmanager, this will be used as http://prometheus-msteams:2000/alerts-info
  - alerts-info: ${msteams-info-alerts-webhook}
