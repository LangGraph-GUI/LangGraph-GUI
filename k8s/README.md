
## Kubernetes

Hold at server

### create namespace
```bash
kubectl apply -f namespace/langgraph-gui.yaml
```

### prepare for yourdomain.com

in ```vite.config.ts``` add yourdomain
```
allowedHosts: [
    'localhost',
    '127.0.0.1',
    'yourdomain.com',
],
```

prepare ssl key, pem
```bash
kubectl create secret tls yourdomain-tls-secret \
  --key yourdomain.com.key \
  --cert yourdomain.com.pem \
  -n langgraph-gui
```

### helm ingress install

```bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install my-ingress ingress-nginx/ingress-nginx -n ingress-nginx --create-namespace
```

### registry at local

```bash
docker run --rm -d -p 127.0.0.1:7000:5000 -v "$(pwd)/images:/var/lib/registry" --name registry registry:latest
curl -v http://127.0.0.1:7000/v2/_catalog
```

### build and push to local registry
```bash
docker compose build
docker tag langgraph-gui-frontend:latest 127.0.0.1:7000/langgraph-gui-frontend:latest
docker push 127.0.0.1:7000/langgraph-gui-frontend:latest
docker tag langgraph-gui-backend:latest 127.0.0.1:7000/langgraph-gui-backend:latest
docker push 127.0.0.1:7000/langgraph-gui-backend:latest
```

### deploy by k8s
```bash
kubectl create -f backend-deployment.yaml
kubectl create -f backend-service.yaml
kubectl create -f frontend-deployment.yaml
kubectl create -f frontend-service.yaml
kubectl get pods -n langgraph-gui

kubectl create -f ingress.yaml
kubectl get pods -n ingress-nginx
curl http://frontend.local

```

### update
```bash
kubectl rollout restart deployment/frontend-deployment -n langgraph-gui
kubectl rollout restart deployment/backend-deployment -n langgraph-gui

```