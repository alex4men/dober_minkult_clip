FROM jinaai/clip-server:latest

USER root
RUN apt-get update
RUN apt-get install -y python3-dev

RUN pip install -U pip
COPY requirements.txt /tmp/requirements.txt
RUN pip install -U -r /tmp/requirements.txt
