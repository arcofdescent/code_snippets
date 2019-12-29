#!/usr/bin/perl
use strict; use warnings;

use CGI;
use Data::Dumper;
use URI;
use URI::QueryParam;

my $q = CGI->new('secondlist[]=235466&secondlist[]=235467');
my @products = $q->param('secondlist[]');
print Dumper \@products;

my $str = 'asd';

my $u = URI->new;
$u->query($str);
@products = $u->query_param('secondlist[]');
print Dumper \@products;



