FROM debian

ENV SHELL=/bin/bash

RUN apt update -y
RUN apt install dnsmasq -y
RUN apt install curl -y

# WORKDIR /home/

# COPY ./setupshosts.sh /home/setuphosts.sh
COPY ./dnsmasq.conf /etc/dnsmasq.conf

RUN sh 

RUN sh -c "curl -s https://raw.githubusercontent.com/AdAway/adaway.github.io/master/hosts.txt >> /etc/hosts"
RUN sh -c "curl -s https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt >> /etc/hosts"
RUN sh -c "curl -s https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext >> /etc/hosts"

ENTRYPOINT ["dnsmasq", "-k"]

EXPOSE 53 53/udp