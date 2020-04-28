FROM tensorflow/tensorflow:latest-py3

RUN python -m pip install -U pip

RUN python -m pip install \
    python-dateutil \
    Pillow \
    contextlib2 \
    wandb \
    jupyterlab \
    matplotlib \
    sklearn \
    opencv-python-headless \
    beautifulsoup4 \
    tqdm

# Environment variables for running the training script
ENV TF_CPP_MIN_LOG_LEVEL=4
ENV S3_REGION=eu-west-1
ENV WANDB_PROJECT="machine-learning"
ENV PYTHONPATH=$PYTHONPATH:/usr/src/app:/shared
ENV HOME=/tmp

WORKDIR /shared

CMD bash