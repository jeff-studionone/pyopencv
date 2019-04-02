FROM python:3.7-stretch

RUN apt-get update && \
    apt-get install -y git wget curl

# Get around directory structure quirk of exnteded image
RUN mkdir -p /var/www
# install keras
RUN pip install --upgrade pandas \
    && pip install --upgrade opencv-contrib-python  \
    && pip install --upgrade imutils

WORKDIR /var/www
