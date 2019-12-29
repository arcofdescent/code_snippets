#!/usr/bin/python3

import sys
import logging

def sockMerchant(n, ar):
    # Complete this function
    num_pairs = 0

    while len(ar) > 0:
        s = ar.pop(0)
        print(s)

        try:
            idx = ar.index(s)
            print(idx)
            ar.pop(idx)
            num_pairs = num_pairs + 1
        except ValueError:
            pass

    return num_pairs

n = int(input().strip())
ar = list(map(int, input().strip().split(' ')))
result = sockMerchant(n, ar)
print(result)
