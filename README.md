# Cling-Jupyter Docker Image

This repository provides a Docker image for running Jupyter Notebooks with [xeus-cling](https://github.com/jupyter-xeus/xeus-cling).

## Getting Started

### Pull & Run

```bash
 docker pull p01arn0va/cling-jupyter
 docker run -it -v ~/Documents/workspace:/home/jovyan/work -p8888:8888 --rm cling-jupyter:latest
```

### Building the Docker Image

To build the Docker image locally, run the following command in the repository's root directory:

```bash
docker build -t cling-jupyter .
```
