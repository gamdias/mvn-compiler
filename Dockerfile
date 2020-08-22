FROM maven:3-jdk-8-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# run docker build -t mvn-builder:1.0.0 .
# to generate a new image