FROM golang:1.20

LABEL org.opencontainers.image.source=https://github.com/pascalallen/hello-world-go
LABEL org.opencontainers.image.description="Container image for hello-world-go"
LABEL org.opencontainers.image.licenses=MIT

WORKDIR /app

COPY . ./
RUN go mod download

RUN go build -o /hello-world-go

EXPOSE 9990

CMD ["/hello-world-go"]
