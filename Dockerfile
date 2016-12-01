FROM python:2.7

MAINTAINER Kentaro Terada kterada.0509sg@gmail.com

RUN apt-get update \
    && apt-get -y install nodejs-legacy npm python-dev linkchecker \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

RUN npm install -g http-server

CMD ["linkchecker","--help"]