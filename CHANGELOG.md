# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2025-05-30
### Feature
* Frontend
  * Fully switch to SvelteFlow
  * Refractor to logic, only Node is SSOT, signals to edge update

* Backend
  * change process filename as workflow


## [1.3.1] - 2025-02-24
### Feature
* Frontend
  * change to using redux for config

## [1.3.0] - 2025-02-24
### Feature
* Release

## [1.2.8] - 2025-02-24
### Feature 
* Backend
  * supervisord + daily restart by cron

## [1.2.7] - 2025-02-21
### Feature 
* Backend
  * k8s hold at yourdomain.com/backend
  * tls for backend

## [1.2.4] - 2025-02-10
### Feature 
* Frontend
  * k8s hold at yourdomain.com
  * tls for frontend

### TODO:
* backend 

## [1.2.1] - 2025-02-05
### Frontend
* k8s support
  * compatible with docker compose + k8s

## [1.1.3] - 2025-02-02
### Feature 
* Release Logic
  * add github release and upload with ver

## [1.1.2] - 2025-01-30
### Feature 
* Backend
  * llm support ollama any

* ollama
  * mount .ollama to prevent need download again

* example
  * better trpg play prompt

## [1.1.0] - 2025-01-27
### Feature 
* Backend
  * support subgraph

## [1.0.1] - 2025-01-25
### Feature
* Backend
  * support subgraph (but run "root" only)

* Doc
  * change to new UI

## [1.0.0] - 2025-01-24
### Feature
* Frontned
  * Chage to typescript

## [0.7.1] - 2025-01-12

### Refractor
* make redux as SSOT to update reactflow
* change to @xyflow/react


## [0.6.1] - 2025-01-07

### Refractor
* Workflow decouple langchain, TODO: clip move to llm.py also.

## [0.6.0] - 2025-01-06

### Feature

* General
  * New node type: INFO
  * New node format: ext, this can extend for dynamic parsing

* Frontend
  * refractor to 2 repo, `src/Graph` and repo wrapper
  * new run, better UI/UX
  * use tailwind
  * support INFO node

* backend:
  * using FastAPI
  * refractor as llm.py and workflow.py
  * use workspace/undefined, better for multi user is login with nginx auth with name
  * support multi user if using nginx, example at `nginx/nginx.conf`
  * support change port by env var

* ollama
  * support change port
  * support NV GPU

## [0.5.8] - 2025-01-05

### Feature
* Enable Japanese Input in Node Components by [@hangingma](https://github.com/hangingman)

## [0.5.7] - 2024-07-20

### Feature
* upload files
