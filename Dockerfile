FROM golang:1.19-alpine

ENV dep-env=prod

RUN apk add --no-cache git

RUN mkdir build
WORKDIR /build

RUN export GO111MODULE=on
RUN cd /build && git clone https://github.com/AsennK/devops-test.git
RUN cd /build/devops-test && go build

EXPOSE 8080

ENTRYPOINT ["/build/devops-test/main"]
