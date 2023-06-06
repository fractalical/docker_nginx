FROM nginx:latest
RUN curl -fsSL https://get.docker.com | sh
COPY ./html /usr/share/nginx/html
CMD ["docker", "run", "-d", "-p", "8891:80", "nginx"]
