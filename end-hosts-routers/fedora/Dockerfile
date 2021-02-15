FROM fedora as builder

ADD / buildContext

RUN dnf -y update 

RUN dnf -y install systemd

RUN systemctl disable dnf-makecache

RUN ls /usr/sbin/init

FROM builder

RUN dnf -y install wget iperf iperf3 nc nftables iptables procps tcpdump hostname openvswitch openvswitch-test libreswan openvswitch-ipsec iproute net-tools iputils traceroute procps frr

RUN systemctl set-default multi-user.target

RUN systemctl disable dnf-makecache
RUN systemctl disable dnf-makecache.timer

RUN dnf clean all

RUN /buildContext/enable-frr-ripd.sh

RUN mkdir -p /root/bin

RUN cp /buildContext/frr-ripd-network.sh /root/bin/frr-ripd-network.sh
RUN cp /buildContext/frr-ripd-route.sh /root/bin/frr-ripd-route.sh

ENTRYPOINT [ "/usr/sbin/init" ]

