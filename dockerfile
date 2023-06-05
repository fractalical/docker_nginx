FROM ubuntu:18.04

COPY ./html/index.html /src/index.html

WORKDIR ./src

CMD ['docker', 'run', '-d', '–name', 'my_docker_nginx', '-p', '8895:80', '-v', '$(pwd)/src:/usr/share/nginx/html', 'nginx', '–host', '0.0.0.0', '–port', '8895']
