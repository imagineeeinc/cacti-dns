FROM debian

ENV SHELL=/bin/bash

RUN apt update -y
RUN apt install dnsmasq -y
RUN apt install curl -y
RUN apt install nodejs -y

COPY ./setup/ /home/setup
COPY ./hosts /home/hosts
RUN node /home/setup/setup.js
COPY ./dnsmasq.conf /etc/dnsmasq.conf

ENTRYPOINT ["dnsmasq", "-k"]

EXPOSE 53 53/udp