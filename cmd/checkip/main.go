package main

import (
	"fmt"
	"io"
	"net/http"
)

const CHECKIP_ENDPOINT = "https://checkip.amazonaws.com/"

func main() {
	resp, err := http.DefaultClient.Get(CHECKIP_ENDPOINT)
	if err != nil {
		panic(err)
	}
	defer resp.Body.Close()

	b, err := io.ReadAll(resp.Body)
	if err != nil {
		panic(err)
	}

	fmt.Println(string(b))
}
