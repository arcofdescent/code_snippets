#!/usr/bin/python3

"""
The Celsius and Kelvin scales have the same magnitude, but different null points.

0 degrees Celsius corresponds to 273.15 kelvin. 
0 kelvin is absolute zero. 

The Fahrenheit and Rankine scales also have the same magnitude, but different null
points.

0 degrees Fahrenheit corresponds to 459.67 degrees Rankine. 
0 degrees Rankine is absolute zero. 

The Celsius/Kelvin and Fahrenheit/Rankine scales have a ratio of 5 : 9.

Write code that accepts a value of kelvin, converts it to values on the
three other scales and prints the result. 
"""

import sys

def main(argv):

    if len(argv) == 0:
        print("missing argument")
        exit(1)

    temp_kelvin = float(argv[0])
    temp_celsius = temp_kelvin - 273.15

    print("K %.2f" % temp_kelvin)
    print("C %.2f" % temp_celsius)

    temp_rankine = temp_kelvin * 1.8
    print("R %.2f" % temp_rankine)

    temp_fahrenheit = temp_rankine - 459.67
    print("F %.2f" % temp_fahrenheit)



if __name__ == '__main__':
    main(sys.argv[1:])

