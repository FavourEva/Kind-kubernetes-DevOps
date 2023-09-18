# Terraform Configuration Block
terraform {
  # Specify the minimum required Terraform version for compatibility
  required_version = ">= 0.13"

  # Declare required providers and their versions
  required_providers {
    kubectl = {
      # Provider Name: kubectl
      source  = "gavinbunney/kubectl"  # Provider source, which is the community-maintained 'kubectl' provider
      version = ">= 1.7.0"            # Minimum required provider version
    }
  }
}

# Provider Configuration Block for Kubernetes
provider "kubernetes" {
  # Path to the Kubernetes configuration file (kubeconfig)
  config_path   = var.kube_config

  # Context name within the Kubernetes configuration file (kubeconfig)
  config_context = var.context
}
