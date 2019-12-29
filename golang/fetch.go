// fetch URLs specified on command line
package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
	"strings"
)

func main() {
	for _, url := range os.Args[1:] {

		// check protocol scheme
		if !strings.HasPrefix(url, "http://") {
			url = "http://" + url
		}

		fmt.Printf("Fetching %s...\n", url)

		resp, err := http.Get(url)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error with %s: %v\n", url, err)
			os.Exit(1)
		}

		fmt.Printf("Response status: %s\n", resp.Status)

		content, err := ioutil.ReadAll(resp.Body)
		resp.Body.Close()

		if err != nil {
			fmt.Fprintf(os.Stderr, "Error reading: %v", err)
		}

		fmt.Println(string(content))
	}
}
