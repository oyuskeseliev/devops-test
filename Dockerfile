FROM golang:1.19-alpine

RUN apk add --no-cache git

RUN mkdir build
WORKDIR /build

RUN export GO111MODULE=on
RUN cd /build && git clone https://github.com/AsennK/devops-test.git
RUN sed -i "s/dev/prod/g" /build/devops-test/*.go
RUN cd /build/devops-test && go build -o main

EXPOSE 8080

ENTRYPOINT ["/build/devops-test/main"]
