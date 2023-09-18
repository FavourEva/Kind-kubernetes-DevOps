# Terraform Module Block: "kube"
# This module block defines a module named "kube" that uses the source code located in the "./modules/kube-prometheus" directory.
module "kube" {
  source = "./modules/kube-prometheus"  # Specifies the source directory for the module.
}
