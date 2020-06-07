FROM debian:buster-slim

RUN apt-get update -y && \
    apt-get install xplanet -y && \
    apt-get install nginx -y

RUN mkdir www && mkdir www/data

COPY nginx.conf /etc/nginx

COPY on_start.sh .

CMD ./on_start.sh