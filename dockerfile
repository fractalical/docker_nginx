FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
COPY static-html-directory /usr/share/nginx/html
