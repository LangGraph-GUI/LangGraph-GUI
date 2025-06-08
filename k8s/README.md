
## Kubernetes

Hold at server

### create namespace
```bash
kubectl apply -f namespace/langgraph-gui.yaml
```

### prepare for https

in ```vite.config.ts``` add yourdomain
```javascript
allowedHosts: [
    'localhost',
    '127.0.0.1',
    'yourdomain.com',
],
```

use ssl key, pem
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
docker tag langgraph-gui-ollama:latest 127.0.0.1:7000/langgraph-gui-ollama:latest
docker push 127.0.0.1:7000/langgraph-gui-ollama:latest
```

### deploy by k8s
```bash
kubectl create -f .
```

### MIME Types
if there is mime types error such .css is text/html or plain text
see [mime](./mime)


### NV GPU support
see [NV-GPU](./NV-GPU)

### Debug
restart:
```bash
kubectl rollout restart deployment/frontend-deployment -n langgraph-gui
kubectl rollout restart deployment/backend-deployment -n langgraph-gui

```

local dev or test
```bash
kubectl port-forward service/frontend-service 3000:3000 -n langgraph-gui
kubectl port-forward service/backend-service 5000:5000 -n langgraph-gui
```
