#!/usr/bin/python3

'''
This is an old game played with pencil and paper that was later implemented on computer.

The task is for the program to create a four digit random number from the digits 1 to 9,
without duplication. The program should ask for guesses to this number, reject guesses
that are malformed, then print the score for the guess.

The score is computed as:

    1. The player wins if the guess is the same as the randomly chosen number, and the
       program ends.
    2. A score of one bull is accumulated for each digit in the guess that equals the
       corresponding digit in the randomly chosen initial number.
    3. A score of one cow is accumulated for each digit in the guess that also
       appears in the randomly chosen number, but in the wrong position. 
'''

import sys
from random import randint
from bullcow import *

def gen_randon_num(start, stop, num_digits):

    digits = {}

    while len(digits.keys()) < num_digits:
        ri = randint(start, stop)
        digits[ri] = 1

    return ''.join(map(str, (digits.keys())))

def get_user_input():
    user_input = input("Enter your choice: ")
    return user_input

def validate_user_input(user_input):

    if not user_input.isdigit():
        print("Not a valid number %s" % user_input)
        return 0

    if len(user_input) != 4:
        print("Input should be a 4 digit number")
        return 0

    # no duplicates
    user_input_list = []
    for char in user_input:
        user_input_list.append(char)

    user_input_set = set(user_input_list)
    if len(user_input_set) != 4:
        print("Input number has digit duplicates")
        return 0

    return 1

def main(argv):

    randon_num = gen_randon_num(start = 1, stop = 9, num_digits = 4)
    num_tries = 0

    while True:
        input_valid = False

        while (not input_valid):
            user_input = get_user_input()
            if not validate_user_input(user_input):
                #if input("Continue? (y/n) ") == 'n': exit(1)
                input_valid = False
            else:
                input_valid = True

        # play!
        num_tries += 1
        if user_input == randon_num:
            print("Score: You win! Tries: %d" % num_tries)
            print("Random number was %s" % randon_num)
            exit(0)

        # check for a bull
        bull_score = get_score_bull(randon_num, user_input)
        cow_score = get_score_cow(randon_num, user_input)
        
        print("Score: %s" % (bull_score + cow_score))

    return

if __name__ == '__main__':
    main(sys.argv[1:])

