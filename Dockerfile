FROM debian:jessie
MAINTAINER root@ivirtspot.net

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root
ENV TERM linux

RUN apt-get update && \
    apt-get upgrade -qy && \
    apt-get install -qy apt-transport-https curl git && \
    echo 'deb https://deb.nodesource.com/node_4.x jessie main' | tee /etc/apt/sources.list.d/nodesource.list && \
    curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN apt-get update && \
    apt-get -qy install nodejs python make build-essential libzmq3-dev devscripts dh-systemd
ADD satoshilabs-bitcore/ /root/satoshilabs-bitcore
RUN ( cd /root/satoshilabs-bitcore && debuild -uc -us )

