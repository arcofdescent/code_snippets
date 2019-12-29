#!/usr/bin/python3

from random import randint
import time
import concurrent.futures

workers = 30

def fibonacci(n):
    if n <= 1:
        return 1

    return fibonacci(n-1) + fibonacci(n-2)

'''
arr = []
for i in range(20):
    arr.append(randint(0, 35))
'''

arr = [ 21, 19, 28, 19, 28, 15, 32, 28, 21, 36, 33 ]

t0 = time.time()

#fib_arr = [fibonacci(val) for val in arr]

#'''
with concurrent.futures.ProcessPoolExecutor(max_workers = 2) as executor:
    fib_arr = list(executor.map(fibonacci, arr, chunksize = 1))


elapsed = time.time() - t0

print(arr)
print(fib_arr)
print("Time elapsed: %d sec" % elapsed)
