FROM nginx:latest
COPY ./html /usr/share/nginx/html
ENTRYPOINT ["-d", "-p", "8891:80"]
