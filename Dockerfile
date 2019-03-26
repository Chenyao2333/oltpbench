FROM openjdk:8-alpine

RUN apk add apache-ant

COPY . /oltpbench
WORKDIR /oltpbench

RUN ant

ENTRYPOINT [ "/oltpbench/oltpbenchmark" ]
