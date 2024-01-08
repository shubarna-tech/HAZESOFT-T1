FROM alpine:latest

LABEL maintainer="Shubarna Adhikari"

RUN apk --no-cache add nginx && \
    mkdir -p /run/nginx

COPY nginx.conf /etc/nginx/nginx.conf

COPY site/index.html /usr/share/nginx/html/site/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

#docker build -t mynginx .

#docker run -dp 9000:80 mynginx

# site available at - http://localhost:9000/site/index.html