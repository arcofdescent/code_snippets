#!/usr/bin/perl
use 5.010;
use strict; use warnings;

use Car;

my $c1 = Car->new(uid => 'yyy');
say $c1->car_type;
say $c1->chassis;
say $c1->pump_type;

