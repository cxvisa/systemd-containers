docker build -t fedora-systemd:1.0 .
docker run -d --name fs --privileged fedora-systemd:1.0
