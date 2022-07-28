FROM debian

USER dns

ENV SHELL=/bin/bash

RUN apt update
RUN sudo apt install dnsmasq

COPY ./dnsmasq.conf /etc/dnsmasq.conf

CMD sudo service dnsmasq restart

EXPOSE 53
EXPOSE 5353