FROM quay.io/jupyter/minimal-notebook

ARG CONDA_ENV_NAME=cling
ARG python_version=3.8

# Switch to root user
USER root

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential 

# Create and activate conda environment
RUN conda create -n $CONDA_ENV_NAME python=$python_version && \
    echo "conda activate $CONDA_ENV_NAME" >> /etc/profile.d/conda.sh && \
    conda init && \
    exec bash

# Install xeus-cling and its dependencies && Install the Kernel Spec
RUN /bin/bash -c "source activate $CONDA_ENV_NAME && \
    mamba install xeus-cling jupyter-lsp-python -c conda-forge --yes && \
    jupyter kernelspec install /opt/conda/envs/cling/share/jupyter/kernels/xcpp11 --sys-prefix && \
    jupyter kernelspec install /opt/conda/envs/cling/share/jupyter/kernels/xcpp14 --sys-prefix && \
    jupyter kernelspec install /opt/conda/envs/cling/share/jupyter/kernels/xcpp17 --sys-prefix"

# Set the default command to start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
