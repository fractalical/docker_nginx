FROM nginx:latest
COPY ./html /usr/share/nginx/html
CMD ["docker", "run", "-d", "-p", "8891:80", "nginx"]
