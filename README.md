# Create Workspaces Project

This project is designed to set up a service mesh using Kuma with Kubernetes, leveraging tools such as Minikube, Kind, Helm, and ArgoCD. 

## Project Structure

- **makefiles/**: Contains Makefiles for managing different components of the project.
  - **minikube.mk**: Rules for managing a Minikube cluster, including creating, setting up Ingress, and deleting the cluster.
  - **kind.mk**: Rules for managing a Kind (Kubernetes in Docker) cluster.
  - **helm.mk**: Rules for managing Helm charts, including installing, upgrading, and uninstalling charts.
  - **argocd.mk**: Rules for managing ArgoCD, including deploying applications and syncing with Git repositories.

- **helm-charts/**: Contains Helm charts for deploying Kuma.
  - **kuma/**: The Helm chart for Kuma, including metadata and templates for deployment, service, and ingress resources.

- **manifests/**: Contains Kubernetes manifests for deploying the Kuma control plane and demo applications.
  - **kuma-control-plane.yaml**: Configuration for deploying the Kuma control plane.
  - **kuma-demo-apps.yaml**: Configuration for deploying demo applications that utilize the Kuma service mesh.

## Setup Instructions

1. **Clone the Repository**: 
   Clone this repository to your local machine.

2. **Install Dependencies**: 
   Ensure you have Docker, Kubernetes (Minikube or Kind), Helm, and ArgoCD installed.

3. **Create a Kubernetes Cluster**: 
   Use the provided Makefiles to create a Kubernetes cluster using either Minikube or Kind.

4. **Deploy Kuma**: 
   Use Helm to deploy the Kuma service mesh by applying the Helm chart located in `helm-charts/kuma`.

5. **Deploy Applications**: 
   Deploy the demo applications using the manifests provided in the `manifests` directory.

6. **Access the Applications**: 
   Configure Ingress to access the deployed applications.

## Usage Guidelines

- Use the Makefile commands to manage the lifecycle of your Kubernetes cluster and applications.
- Refer to the individual Makefiles for specific commands and options available for Minikube, Kind, Helm, and ArgoCD.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.