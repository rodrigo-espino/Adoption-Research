FROM docker.io/python:3.11-bookworm

RUN apt-get update && \ 
    apt upgrade -y && \
    pip3 install --upgrade pip && \
    mkdir /research

COPY requirements.txt /research/requirements.txt
RUN pip3 install -r /research/requirements.txt

WORKDIR /research