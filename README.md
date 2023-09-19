# Kind-kubernetes-DevOps
## *Project Overview*
The project revolves around the use of [kind](https://kind.sigs.k8s.io/docs/user/quick-start/), a tool that facilitates running Kubernetes on your local machine by employing specialized Docker containers as its building components. While its initial purpose was for Kubernetes testing, it has versatile applications, including local development and integration into continuous integration workflows.

**Project Tasks**

This project encompasses several tasks, starting with the setup of a Kubernetes cluster using Kind. It involves the creation of a local deployment script, deploying a Node.js application, creating a Docker image for a basic "Hello World" Express app, and securely storing the kubeconfig. Additionally, it entails crafting a Terraform script that leverages the kubectl provider to deploy the app to the Kind cluster. As a bonus, the project extends to establishing monitoring capabilities via the kube-prometheus stack using the Terraform Helm provider.
 
## **Environment Setup**

- Node (v20.6.1)
- Docker(v23.0.6)
- Kind (v0.11.1)
- Helm (v3.12.3)
- Terraform (v1.5.7)
