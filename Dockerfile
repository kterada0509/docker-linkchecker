FROM python:2.7-wheezy

MAINTAINER Kentaro Terada kterada.0509sg@gmail.com

RUN apt-get update \
    && apt-get -y install nodejs-legacy npm python-dev linkchecker

RUN npm install -g http-server

CMD ["linkchecker","--help"]