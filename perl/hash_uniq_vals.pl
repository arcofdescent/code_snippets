#!/usr/bin/perl
use strict; use warnings;

use Data::Dumper;
use List::MoreUtils qw/ uniq /;

my @links = (
    { href => 'kkk', text => 'Text of kkk', },
    { href => 'jjj', text => 'Text of jjj', },
    { href => 'jjj', text => 'Text of jjj', },
    { href => 'mmm', text => 'Text of mmm', },
);

@links = 
    uniq 
    map { $_->{href} } @links;

print Dumper \@links;

