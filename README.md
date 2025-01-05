# LangGraph-GUI

LangGraph-GUI is an user-friendly graphical interface for interacting with reactflow frontend and fastAPI backend using LLM such ollama or other api key.

For more infomation, please see doc: [LangGraph-GUI.github.io](https://LangGraph-GUI.github.io)

![](https://langgraph-gui.github.io/cover.webp)

## Prerequisites

For Docker user, before you start, make sure you have the following software installed on your Linux:

- Ubuntu related Linux (ex: Mint)
- Docker Compose Env
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

Build and start the Docker containers:

```bash
docker compose build
docker compose up
```

Once the containers are up and running, you can access the application at [http://localhost:3000](http://localhost:3000).

### Electron Wrapper

If you don't like use browser, you can use electron wrapper:

- To run the Electron wrapper

```bash
npm start
```

- Building the Application

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
