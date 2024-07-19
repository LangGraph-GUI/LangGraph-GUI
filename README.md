# LangGraph-GUI

LangGraph-GUI-App is an Electron and Docker-based application that provides a user-friendly graphical interface for interacting with [LangGraph-GUI-frontend](https://github.com/LangGraph-GUI/LangGraph-GUI-frontend) and [LangGraph-GUI-backend](https://github.com/LangGraph-GUI/LangGraph-GUI-backend) and LocalLLM such Ollama.

![](https://https://langgraph-gui.github.io/cover.webp)

## Prerequisites

Before you start, make sure you have the following software installed on your system:
 
- nv-docker (for running ollama)
- Docker Compose
- (Optional for electron)[npm](https://www.npmjs.com/)


## Getting Started

### Clone the Repository

First, clone the repository and its submodules:

```bash
git clone --recurse-submodules https://github.com/LangGraph-GUI/LangGraph-GUI-App.git
cd LangGraph-GUI-App
```

### Docker Setup

Build and start the Docker containers:

```bash
docker compose build
docker compose up
```

Once the containers are up and running, you can access the application at [http://localhost:3000](http://localhost:3000).

### Electron Wrapper
If you don't like use browser, you can use electron wrapper:

* To run the Electron wrapper
```bash
npm start
```
* Building the Application
```bash
npm run build
```

## Contributing

We welcome contributions to LangGraph-GUI-App! If you have any suggestions or find any issues, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For questions or feedback, please contact us at [homun@posetmage.com](mailto:homun@posetmage.com).

---

Thank you for using LangGraph-GUI!
