FROM golang:1.17.2-buster as builder

WORKDIR /go/src
COPY . .
RUN make build_proxy

FROM gcr.io/distroless/base
COPY --from=builder /go/src/bin/proxy /usr/local/bin/proxy
CMD ["/usr/local/bin/proxy"]
