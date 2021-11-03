.PHONY: checkip
checkip:
	go run cmd/checkip/main.go

.PHONY: proxy
proxy:
	go run cmd/proxy/main.go

.PHONY: build_proxy
build_proxy:
	go build -o bin/proxy cmd/proxy/main.go
