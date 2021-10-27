proxy-test-go
===

1. without proxy

```
⟩ make checkip
go run cmd/checkip/main.go
60.71.23.81
```

2. with proxy, not running proxy

```
⟩ env HTTPS_PROXY=localhost:8080 make checkip
go run cmd/checkip/main.go
panic: Get "https://checkip.amazonaws.com/": proxyconnect tcp: dial tcp [::1]:8080: connect: connection refused

goroutine 1 [running]:
main.main()
        /Users/alice/develop/proxy-test-go/cmd/checkip/main.go:14 +0x135
exit status 2
make: *** [checkip] Error 1
```

3. with proxy

```
⟩ env HTTPS_PROXY=localhost:8080 make checkip
go run cmd/checkip/main.go
60.71.23.81

⟩ make proxy
go run cmd/proxy/main.go
2021/10/27 22:19:14 [001] INFO: Running 0 CONNECT handlers
2021/10/27 22:19:14 [001] INFO: Accepting CONNECT to checkip.amazonaws.com:443
```
