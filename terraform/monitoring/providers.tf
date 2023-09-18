# Provider Configuration Block for Helm
provider "helm" {
  kubernetes {
    # Specify the path to the Kubernetes configuration file (kubeconfig)
    config_path = "~/.kube/config"

    # Specify the context name within the Kubernetes configuration file
    config_context = "kind-kind-cluster"
  }
}
