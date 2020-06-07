FROM debian:buster-slim

RUN apt-get update -y && apt-get install xplanet -y