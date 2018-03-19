FROM golang:latest
RUN mkdir -p /go/src/jenkins-test
WORKDIR /go/src/jenkins-test
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o test .