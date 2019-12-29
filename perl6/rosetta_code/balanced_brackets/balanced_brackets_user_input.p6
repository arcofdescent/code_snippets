#!/usr/bin/env perl6
use v6;

# http://rosettacode.org/wiki/Balanced_brackets

use lib '.';
use CheckBalance;

loop {
    my $input = prompt "Enter the string to be checked: ";
    say check_balance($input) ?? 'OK' !! 'NOT OK';
}

