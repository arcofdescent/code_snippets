#!/usr/bin/perl
use strict; use warnings;

use List::MoreUtils qw/ first_index /;

my @arr = (13, 56, 2, 190, 34, 56, 8, 12, 89);
my @sorted_arr = sort { $b <=> $a } @arr;

my $max_index = first_index { $_ == $sorted_arr[0] } @arr;
print "Index with max value: $max_index\n";

my $min_index = first_index { $_ == $sorted_arr[-1] } @arr;
print "Index with min value: $min_index\n";

