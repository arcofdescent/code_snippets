#!/usr/bin/env perl6
use v6;

# http://rosettacode.org/wiki/Balanced_brackets

use lib '.';
use CheckBalance;

sub MAIN(Int $n where { $n >= 0 })
{
    if $n == 0 {
        say '(empty) OK';
        exit;
    }

    # generate the brackets
    my @brackets = <[ ]> xx $n;
    my $generated = @brackets.pick(*).join;

    say $generated;
    say check_balance($generated) ?? 'OK' !! 'NOT OK';
}

