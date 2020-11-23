FROM ubuntu as builder

RUN apt -y update 
RUN apt -y upgrade 

RUN apt -y install systemd init

RUN apt -y install wget iperf iperf3 netcat nftables iptables procps tcpdump hostname openvswitch-switch openvswitch-switch-dpdk openvswitch-test libreswan openvswitch-pki iproute2 net-tools traceroute procps

RUN systemctl set-default multi-user.target

RUN apt -y autoclean

ENTRYPOINT [ "/usr/sbin/init" ]

