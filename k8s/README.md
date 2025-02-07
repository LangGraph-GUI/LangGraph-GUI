
## Kubernetes

### start env
if minikube
```bash
minikube start
eval $(minikube docker-env)
```

### Frontend
build image:
```bash
cd frontend
docker build -t langgraph-gui-frontend:latest . 
```

create namespace:
```bash
cd k8s
kubectl apply -f namespace.yaml
```

deploy:
```bash
cd k8s
kubectl apply -f frontend-deployment.yaml
kubectl get pods -n langgraph-gui

kubectl apply -f ingress.yaml
kubectl get pods -n ingress-nginx
curl http://frontend.local

```
