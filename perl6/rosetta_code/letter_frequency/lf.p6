#!/usr/bin/env perl6
use v6;

sub MAIN(:$file!, Bool :$show-punctuation = False) {

    # check that file exists
    unless $file.IO ~~ :f {
        die "No such file $file found";
    }

    # hash to keep track of characters
    my %char;

    my $fh = open $file orelse die "Could not open $file for reading";
    for $fh.lines -> $line {
        for $line.comb -> $c {
            next if !$show-punctuation && $c !~~ m/ <[a..z]+[A..Z]+[0..9]> /;
            %char{$c}++;
        }
    }

    for %char.keys.sort -> $c {
        say "Character: $c Frequency: %char{$c}";
    }
}

