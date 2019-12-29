// example of goroutines and channels
package main

import (
	"fmt"
	"net"
	"os"
)

func main() {
	ch := make(chan string)

	for _, host := range os.Args[1:] {
		go lookupHost(host, ch)
	}

	for range os.Args[1:] {
		fmt.Println(<-ch)
	}
}

func lookupHost(host string, ch chan<- string) {
	addrs, err := net.LookupHost(host)
	if err != nil {
		ch <- fmt.Sprintf("Error: %v\n", err)
		return
	}

	ch <- fmt.Sprintf("%s: %s", host, addrs[0])
}
