# hello-world-go

hello-world-go is a tutorial repository, demonstrating how to deploy to Kubernetes.

## Prerequisites

- [Docker](https://www.docker.com/)
- [Kubernetes](https://kubernetes.io/releases/download/)
- [kubectl](https://kubernetes.io/releases/download/)
- [A Docker Hub account](https://hub.docker.com/)

## Kubernetes Deployment Steps

### Build and Tag Docker Image

```bash
docker build -t pascalallen/hello-world-go .
```

### Log in to Docker Hub

```bash
docker login
```

### Push Image to Docker Hub

```bash
docker push pascalallen/hello-world-go
``` 

### Apply Service to Kubernetes Cluster

```bash
kubectl apply -f etc/k8s/go
```

Locally, you will find the site running at http://localhost:9990/ 

### List Kubernetes Pods

```bash
kubectl get pods
```

### List Kubernetes Services

```bash
kubectl get services
```

### Delete Service and Pod from Kubernetes Cluster

```bash
kubectl delete -f etc/k8s/go
```

