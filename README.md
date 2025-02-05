# LangGraph-GUI

LangGraph-GUI is an user-friendly graphical interface for interacting with reactflow frontend and fastAPI backend using LLM such ollama or other api key.

For more infomation, please see doc: [LangGraph-GUI.github.io](https://LangGraph-GUI.github.io)

![](https://langgraph-gui.github.io/cover.webp)

## Prerequisites

For Linux user, before you start, make sure you have the following software installed on your Linux:

- Docker Compose Environment
- nv-docker (optional for running ollama)
- (Optional for electron) npm

For Windows user, please see [LangGraph GUI Setup on Windows](https://langgraph-gui.github.io/Others/Windows)

## Getting Started

### Clone the Repository

First, clone the repository and its submodules:

```bash
git clone --recurse-submodules https://github.com/LangGraph-GUI/LangGraph-GUI.git
cd LangGraph-GUI
```

### Docker Compose Setup

Prepare: Build the Docker containers and pull ollama models :
```base
docker compose build
docker compose up ollama -d
docker compose exec ollama ollama pull xxxx
docker compose down
```

then start 
```bash
docker compose up
```

Once the containers are up and running, you can access the application at [http://localhost:3000](http://localhost:3000).


## Kubernetes

### start env
if minikube
```bash
minikube start
eval $(minikube docker-env)
```

### Frontend
```bash
cd frontend
docker build -t langgraph-gui-frontend:latest . 
kubectl apply -f frontend-deployment.yaml
kubectl get pods
curl http://frontend.local
```

### ingress

```bash
cd k8s
kubectl apply -f ingress.yaml
kubectl get pods -n ingress-nginx
```



## Contact or Contributing

We welcome contributions to LangGraph-GUI-App! If you have any suggestions or find any bugs, or any questions, feedback, please use [discussion](https://github.com/LangGraph-GUI/LangGraph-GUI/discussions) or [issue](https://github.com/LangGraph-GUI/LangGraph-GUI/issues).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Thank you for using LangGraph-GUI!
