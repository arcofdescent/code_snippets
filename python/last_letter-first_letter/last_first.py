#!/usr/bin/python3

"""
Take the following selection of 70 English Pokemon names (extracted from Wikipedia's list
of Pokemon) and generate the/a sequence with the highest possible number of Pokemon names
where the subsequent name starts with the final letter of the preceding name. No Pokemon
name is to be repeated.
"""

import sys

pokemons = [    
    'audino', 'bagon', 'baltoy', 'banette', 'bidoof', 'braviary', 'bronzor',
    'carracosta', 'charmeleon', 'cresselia', 'croagunk', 'darmanitan', 
    'deino', 'emboar', 'emolga', 'exeggcute', 'gabite', 'girafarig', 
    'gulpin', 'haxorus', 'heatmor', 'heatran', 'ivysaur', 'jellicent',
    'jumpluff', 'kangaskhan', 'kricketune', 'landorus', 'ledyba', 'loudred', 
    'lumineon', 'lunatone', 'machamp', 'magnezone', 'mamoswine', 'nosepass', 
    'petilil', 'pidgeotto', 'pikachu', 'pinsir', 'poliwrath', 'poochyena',
    'porygon2', 'porygonz', 'registeel', 'relicanth', 'remoraid', 'rufflet', 
    'sableye', 'scolipede', 'scrafty', 'seaking', 'sealeo', 'silcoon', 
    'simisear', 'snivy', 'snorlax', 'spoink', 'starly', 'tirtouga', 'trapinch', 
    'treecko', 'tyrogue', 'vigoroth', 'vulpix', 'wailord', 'wartortle', 
    'whismur', 'wingull', 'yamask'
]

def get_next_name(name, list_of_names):

    next_names = []

    for n in list_of_names:
        if n[0] == name[-1]:
            next_names.append(n)

    return next_names

def try_name(idx, pokemons):
    selected_names = []
    selected_names.append(pokemons[idx])
    pokemons.pop(idx)

    possible_next_names = get_next_name(selected_names[-1], pokemons)
    for pn in possible_next_names:
        selected_names.append(pn)
        pokemons.remove(pn)

    return selected_names

def main(argv):

    selected_names = try_name(2, pokemons)


    print(selected_names)

if __name__ == '__main__':
    main(sys.argv[1:])

