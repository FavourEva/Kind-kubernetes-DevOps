# Terraform Variable: "kube_config"
# This variable is defined with a string type and is intended for specifying the path to the Kubernetes configuration file.
variable "kube_config" {
  type    = string
  default = "~/.kube/config"  # The default value is set to the default path for the Kubernetes configuration (~/.kube/config).
}

# Terraform Variable: "context"
# This variable is defined with a string type and is intended for specifying the name of the Kubernetes context.
variable "context" {
    type    = string
    default = "kind-kind-cluster"  # The default value is set to "kind-my-cluster".
}
