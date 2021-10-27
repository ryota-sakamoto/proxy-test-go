.PHONY: checkip
checkip:
	go run cmd/checkip/main.go

.PHONY: proxy
proxy:
	go run cmd/proxy/main.go
