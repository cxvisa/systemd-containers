FROM fedora as builder

ADD / buildContext

RUN dnf -y update 

RUN dnf -y install systemd

RUN systemctl disable dnf-makecache

RUN ls /usr/sbin/init

FROM builder

RUN dnf -y install wget iperf iperf3 nc nftables iptables procps tcpdump hostname openvswitch openvswitch-test libreswan openvswitch-ipsec iproute net-tools iputils traceroute procps frr dhclient

RUN systemctl set-default multi-user.target

RUN systemctl disable dnf-makecache
RUN systemctl disable dnf-makecache.timer

RUN dnf clean all

RUN /buildContext/enable-frr-daemons.sh

RUN mkdir -p /root/bin

RUN cp /buildContext/frr-daemons-wait.sh /root/bin/frr-daemons-wait.sh
RUN cp /buildContext/frr-ripd-network.sh /root/bin/frr-ripd-network.sh
RUN cp /buildContext/frr-ripd-route.sh /root/bin/frr-ripd-route.sh
RUN cp /buildContext/frr-bgpd-neighbor.sh /root/bin/frr-bgpd-neighbor.sh
RUN cp /buildContext/frr-bgpd-network.sh /root/bin/frr-bgpd-network.sh
RUN cp /buildContext/frr-bgpd-router-id.sh /root/bin/frr-bgpd-router-id.sh
RUN cp /buildContext/frr-ospfd-area.sh /root/bin/frr-ospfd-area.sh
RUN cp /buildContext/frr-ospfd-interface.sh /root/bin/frr-ospfd-interface.sh
RUN cp /buildContext/frr-ospfd-router-id.sh /root/bin/frr-ospfd-router-id.sh

ENTRYPOINT [ "/usr/sbin/init" ]

