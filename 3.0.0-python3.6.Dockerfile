FROM python:3.6.8

LABEL maintainer="maturinbado@gmail.com"

RUN pip install pip --upgrade
RUN pip install ansible==3.0.0

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass
