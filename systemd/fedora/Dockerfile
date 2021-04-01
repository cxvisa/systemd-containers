FROM fedora as builder

RUN dnf -y update 

RUN dnf -y install systemd

RUN systemctl disable dnf-makecache

RUN ls /usr/sbin/init

FROM builder

RUN dnf -y install wget iperf iperf3 nc nftables iptables procps tcpdump hostname openvswitch openvswitch-test libreswan openvswitch-ipsec iproute net-tools iputils traceroute procps dhclient

RUN systemctl set-default multi-user.target

RUN systemctl disable dnf-makecache
RUN systemctl disable dnf-makecache.timer

RUN dnf clean all

ENTRYPOINT [ "/usr/sbin/init" ]

