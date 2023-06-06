FROM ubuntu:20.04

RUN curl -fsSL https://get.docker.com | sh

COPY ./html /usr/share/nginx/html

RUN systemctl start docker

CMD ["docker", "run", "-d", "-p", "8891:80", "nginx"]
