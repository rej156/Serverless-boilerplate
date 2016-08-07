package main

import (
	"encoding/json"
	"github.com/apex/go-apex"
)

// main ...
func main() {
	apex.HandleFunc(func(event json.RawMessage, ctx *apex.Context) (interface{}, error) {
		return "Your Serverless Golang function has run!", nil
	})
}
