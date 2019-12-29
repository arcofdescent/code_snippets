#!/usr/bin/python3

# count frequency of chars

import sys

def display_chars(chars):
    for c in sorted(chars):
        print ("char: %r, count %d" % (c, chars[c]))

def process_file(file_name, chars):
    try:
        f = open(file_name, 'r')
    except IOError:
        raise

    for line in f:
        for char in line:
            if not char in chars:
                chars[char] = 0

            chars[char] += 1;

    f.close()

def main(argv):
    if len(argv) == 0:
        print ("No args supplied")
        sys.exit()

    chars = {}

    for file_name in argv:
        try:
            process_file(file_name, chars)
        except:
            continue

    display_chars(chars);
    return

if __name__ == '__main__':
    main(sys.argv[1:])

