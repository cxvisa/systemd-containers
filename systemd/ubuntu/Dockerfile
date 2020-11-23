FROM ubuntu as builder

RUN apt -y update 
RUN apt -y upgrade 

RUN apt -y install systemd init

RUN systemctl set-default multi-user.target

RUN apt -y autoclean

ENTRYPOINT [ "/usr/sbin/init" ]

