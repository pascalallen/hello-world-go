FROM golang:1.20

LABEL org.opencontainers.image.source=https://github.com/pascalallen/kubernetes-go
LABEL org.opencontainers.image.description="Container image for kubernetes-go"
LABEL org.opencontainers.image.licenses=MIT

WORKDIR /app

COPY . ./
RUN go mod download

RUN go build -o /kubernetes-go

EXPOSE 9990

CMD ["/kubernetes-go"]
