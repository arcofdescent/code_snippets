#!/usr/bin/perl
use strict; use warnings;

use List::MoreUtils qw/ uniq /;
use Data::Dumper;


my $a = "AAABBBAAA";

my @indices;
for (0 .. (length($a) - 1)) {
    push @indices, index $a, 'A', $_;
}

@indices = uniq @indices;
print Dumper \@indices;



