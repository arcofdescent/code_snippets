#!/usr/bin/perl
use strict; use warnings;

# Keywords: map, array, hash

use Data::Dumper;

my @fields = (
    'area_code',
    'exchange',
    'city',
    'country',
);

my @data = (
    401,
    201,
    'mumbai',
    'IN',
);

my %h = map { shift @fields => $_ } @data;

print Dumper(\%h);

