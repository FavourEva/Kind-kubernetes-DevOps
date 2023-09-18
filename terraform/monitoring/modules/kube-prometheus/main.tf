# Terraform Resource: "helm_release" for "kube-prometheus"
resource "helm_release" "kube-prometheus" {
  name       = "kube-prometheus-stack"  # The name assigned to the Helm release.
  version    = "50.1.0"  # The version of the Helm chart to be installed.
  repository = "https://prometheus-community.github.io/helm-charts"  # The URL of the Helm chart repository.
  chart      = "kube-prometheus-stack"  # The name of the Helm chart to install.
}
