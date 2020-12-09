FROM ubuntu as builder

RUN apt-get -y update 
RUN apt-get -y upgrade 

RUN apt-get -y install systemd init

RUN systemctl set-default multi-user.target

RUN apt-get -y autoclean

ENTRYPOINT [ "/usr/sbin/init" ]

