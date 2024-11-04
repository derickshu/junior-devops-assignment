FROM golang:latest

WORKDIR /app
COPY src/ /app

RUN go build -o main .

ENTRYPOINT ["/app/main"]
