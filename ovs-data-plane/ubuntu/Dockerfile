FROM ubuntu as builder

ADD / /buildContext

RUN apt -y update 
RUN apt -y upgrade 

RUN apt -y install systemd init

RUN apt -y install wget iperf iperf3 netcat nftables iptables procps tcpdump hostname openvswitch-switch openvswitch-switch-dpdk openvswitch-test libreswan openvswitch-pki iproute2 net-tools traceroute procps curl lsb sudo

RUN systemctl set-default multi-user.target

RUN /buildContext/install-docker-ce

RUN apt -y autoclean

ENTRYPOINT [ "/usr/sbin/init" ]

