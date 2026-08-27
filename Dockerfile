FROM ubuntu:24.04

RUN apt update && \
    apt install nginx -y && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
