FROM ubuntu:18.04 as builder

ADD / /buildContext

RUN apt-get -y update 
RUN apt-get -y upgrade 

RUN /buildContext/install-tzdata

RUN apt-get -y install systemd init

RUN apt-get -y install wget iperf iperf3 netcat nftables iptables procps tcpdump hostname iproute2 net-tools traceroute procps curl lsb sudo vim inetutils-ping dnsutils

RUN systemctl set-default multi-user.target

RUN /buildContext/install-docker-ce

RUN apt-get -y autoclean

ENTRYPOINT [ "/sbin/init" ]

