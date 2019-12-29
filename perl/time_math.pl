#!/usr/bin/perl
use strict; use warnings;
use feature ":5.10";

use DateTime;

my $dt = DateTime->new(hour => 14, minute => 00, year => '2000');
say $dt;
my $dt2 = DateTime->new(hour => 3, minute => 00, year => '2000');
my $dur = $dt->subtract_datetime($dt2);
say $dur->hours . ':' . $dur->minutes;

