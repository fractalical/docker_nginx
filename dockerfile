FROM ubuntu:18.04

RUN curl -fsSL https://get.docker.com | sh

COPY ./html /usr/share/nginx/html

RUN ln -s /bin/echo /bin/systemctl
RUN apt-get install -y systemd

RUN systemctl start docker

CMD ["docker", "run", "-d", "-p", "8891:80", "nginx"]
