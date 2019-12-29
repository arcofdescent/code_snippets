#!/usr/bin/perl
use strict; use warnings;

use Storable qw/ freeze thaw /;
use Data::Dumper;

my $ref = {
    'first_name' => 'Rohan',
};

my $ser = freeze $ref;
print Dumper($ser);

my %new = %{ thaw($ser) };
print Dumper(\%new);

