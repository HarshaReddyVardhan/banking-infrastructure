# Banking Infrastructure

This repository contains the infrastructure code for the core banking system, including:

- **Kubernetes Manifests** (`/k8s`): For deployment to K8s clusters.
- **Docker Compose** (`/docker-compose`): For local development and orchestration.
- **Terraform** (`/terraform`): For provisioning cloud infrastructure.
- **Configuration** (`/config`): Centralized configuration management.

## Getting Started

### Prerequisites
- Docker & Docker Compose
- Minikube or KIND (for K8s)
- Terraform (optional)

### Local Development
To run the supporting infrastructure (DBs, Kafka, Redis):
```bash
cd docker-compose
docker-compose up -d
```
