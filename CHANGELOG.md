# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
  * change to FastAPI
  * refractor as llm.py and workflow.py
  * use workspace/undefined, better for multi user is login with nginx auth with name
  * support multi user if using nginx, example at `nginx/nginx.conf`

* ollama
  * support change port
  * support NV GPU

## [0.5.8] - 2025-01-05

### Feature
* Enable Japanese Input in Node Components by [@hangingma](https://github.com/hangingman)

## [0.5.7] - 2024-07-20

### Feature
* upload files
