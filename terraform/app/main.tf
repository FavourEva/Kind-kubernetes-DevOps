# This Terraform configuration file manages two Kubernetes resources using "kubectl_manifest."
# It deploys and manages a Kubernetes Deployment and Service by providing the YAML configurations.

# Resource block for managing a Kubernetes Deployment using "kubectl_manifest."
resource "kubectl_manifest" "app-deployment" {
  # The "yaml_body" argument specifies the YAML content for the Kubernetes resource.
  # It retrieves the content from the "deployment.yml" file located in a specific path.
  # The "${path.module}" variable refers to the current module's directory, and "../.." is used to navigate up two levels.
  yaml_body = file("${path.module}/../../kubernetes/deployment.yml")
}

# Resource block for managing a Kubernetes Service using "kubectl_manifest."
resource "kubectl_manifest" "app-service" {
  # The "yaml_body" argument specifies the YAML content for the Kubernetes resource.
  # It retrieves the content from the "service.yml" file located in a specific path.
  # The "${path.module}" variable refers to the current module's directory, and "../.." is used to navigate up two levels.
  yaml_body = file("${path.module}/../../kubernetes/service.yml")
}
