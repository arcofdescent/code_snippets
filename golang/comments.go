// count number of commented lines
// i.e. all lines starting with '//'
// usage: 
//  $ cat file1 file2 | ./comments
//  OR
//  $ ./comments file1 file2

package main

import (
  "fmt"
  "os"
  "bufio"
  "regexp"
)

func main() {
  files := os.Args[1:]
  num_comments := 0

  if len(files) > 0 {
    for _, f := range files {
      fmt.Printf("Reading from %s\n", f)

      file, err := os.Open(f)
      if (err != nil) {
        fmt.Printf("%s\n", err)
        continue
      } else {
        num_comments += countComments(file)
      }
    }
  } else {
    fmt.Println("data from stdin")
    num_comments = countComments(os.Stdin)
  }

  fmt.Printf("Number of comment lines: %d\n", num_comments)
}

func countComments(f *os.File) int {

  input := bufio.NewScanner(f)
  n := 0

  for input.Scan() {
    line := input.Text()

    is_match, err := regexp.MatchString("^\\s*//", line)
    if err != nil {
      fmt.Printf("%s", err)
      continue
    }

    if is_match {
      n++
    }
  }

  return n;
}

