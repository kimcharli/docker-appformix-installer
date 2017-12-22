FROM ubuntu:16.04

LABEL maintainer="kimcharli@gmail.com"

RUN apt update && apt install -y python-pip && pip install ansible==2.3 httplib2 requests

