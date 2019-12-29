#!/usr/bin/env perl6
#
use v6;

my $file = open 'bs.csv';
my @lines = $file.lines;

for @lines -> $line {
    say $line;
}

