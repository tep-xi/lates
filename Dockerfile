FROM golang:1.7-alpine
ADD . /go/src/github.mit.edu/tep/lates
WORKDIR /go/src/github.mit.edu/tep/lates
EXPOSE 8080
ENV TZ=US/Eastern
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENTRYPOINT go run lates.go