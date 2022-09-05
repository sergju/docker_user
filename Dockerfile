FROM ubuntu:20.04

RUN apt-get update
RUN apt-get --yes upgrade

ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get install -y mc

ARG DOCKER_USER=user

RUN useradd -ms /bin/bash $DOCKER_USER

#USER $DOCKER_USER

