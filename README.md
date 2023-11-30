# Cling-Jupyter Docker

This repository provides a Dockerfile for running [cling](https://github.com/root-project/cling) with [Jupyter Notebooks](https://jupyter.org/) using [xeus-cling](https://github.com/jupyter-xeus/xeus-cling).

## Getting Started

### Pull & Run

To pull the Docker image, use the following command:
```bash
docker pull p01arn0va/cling-jupyter
```

Here is an example of how to run the Docker image:
```bash
docker run -it --rm -p8888:8888 -v $PWD:/home/jovyan/work p01arn0va/cling-jupyter
```

### Building the Docker Image

To build the Docker image locally, run the following command in the repository's root directory:

```bash
docker build -t cling-jupyter .
```
