#!/usr/bin/perl
use strict; use warnings;

use Date::Manip;

my $date = '2009/05/27';
my ($d) = UnixDate(ParseDate($date), '%w');
print $d;

