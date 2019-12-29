#!/usr/bin/perl
use strict; use warnings;
use v5.10;
$|++;

my $num = shift or die "arg required";

open my $WFH, '>', $num . ".txt"
    or die "Can't open file $num for writing";

for (1 .. 10) {
    say $WFH $num . " * $_ = " . ($num * $_);
}

close $WFH;

