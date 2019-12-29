#!/usr/bin/env perl6
use v6;

# http://rosettacode.org/wiki/Balanced_brackets

use Test;

ok (check_balance('[]') == True);
ok (check_balance('][') == False);
ok (check_balance('[[]]') == True);
ok (check_balance('][[]') == False);
ok (check_balance(']][[') == False);
ok (check_balance('[][]') == True);
ok (check_balance('[]][') == False);
ok (check_balance('[[[]]]') == True);
ok (check_balance('[][[[[]][]][]][]') == True);
ok (check_balance('[[]][][][[]][]') == True);
ok (check_balance('[[[][]][[]]]][[]') == False);

sub check_balance(Str $b) returns Bool {

    my $num_opens = 0;

    for $b.comb -> $c {

        if $c eq '[' {
            $num_opens++;
        }

        if $c eq ']' {
            $num_opens--;
            if $num_opens < 0 {
                return False;
            }
        }
    }

    return $num_opens == 0;
}

