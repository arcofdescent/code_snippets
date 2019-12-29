#!/usr/bin/env perl6

use v6;

my @colors = red => '#f00', green => '#0f0', blue => '#00f';
for @colors {
    say .key ~ ' has hex value of ' ~ .value;
}

