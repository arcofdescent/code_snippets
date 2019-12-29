
from pyjamas.ui.RootPanel import RootPanel
from pyjamas.ui.Button import Button
from pyjamas.ui.HTML import HTML
from pyjamas.ui.Label import Label
from pyjamas import Window

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

from random import randint

def gen_randon_num(start, stop, num_digits):

    digits = {}

    while len(digits.keys()) < num_digits:
        ri = randint(start, stop)
        digits[ri] = 1

    return ''.join(map(str, (digits.keys())))

def validate_user_input(user_input):

    if not user_input.isdigit():
        #print("Not a valid number %s" % user_input)
        return 0

    if len(user_input) != 4:
        #print("Input should be a 4 digit number")
        return 0

    # no duplicates
    user_input_list = []
    for char in user_input:
        user_input_list.append(char)

    user_input_set = set(user_input_list)
    if len(user_input_set) != 4:
        #print("Input number has digit duplicates")
        return 0

    return 1

def get_score_bull(num, chosen):
    num_list = list(str(num))
    chosen_list = list(str(chosen))
    num_bulls = 0

    for idx, d in enumerate(num_list):
        if num_list[idx] == chosen_list[idx]:
            num_bulls += 1

    return 'B' * num_bulls

def get_score_cow(num, chosen):
    num_list = list(str(num))
    chosen_list = list(str(chosen))
    num_cows = 0

    for idx, d in enumerate(num_list):
        if num_list[idx] != chosen_list[idx] and num_list[idx] in chosen_list:
            num_cows += 1

    return 'C' * num_cows

def start_game(sender):
    randon_num = gen_randon_num(start = 1, stop = 9, num_digits = 4)
    Window.alert("Randon number is " + randon_num)

if __name__ == '__main__':
    b = Button("Start game", start_game)
    RootPanel().add(b)
    
