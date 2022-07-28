FROM debian

ENV SHELL=/bin/bash

RUN apt update -y
RUN apt install dnsmasq -y

COPY ./dnsmasq.conf /etc/dnsmasq.conf

# RUN service dnsmasq restart

# CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]

ENTRYPOINT ["dnsmasq", "-k"]

EXPOSE 53 53/udp