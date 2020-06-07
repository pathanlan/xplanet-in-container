#FROM debian:buster-slim
FROM nginx

RUN apt-get update -y && apt-get install xplanet -y

RUN mkdir www && mkdir www/data
WORKDIR /www/data
RUN xplanet -output test.jpg -projection rectangular -num_times 1

COPY nginx.conf /etc/nginx