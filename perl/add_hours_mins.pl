#!/usr/bin/perl
use strict; use warnings;

use DateTime;
use Perl6::Say;
use IO::Prompt;

my $input_line = prompt "Enter slots:\n";

my @slots = split /\+/, $input_line;

my $dt = DateTime->new(
    year => 2007,
    hour => 0,
    minute => 0,
);

for (@slots) {
    my ($hours, $mins) = split /:/, $_;
    my $dt_dur = DateTime::Duration->new(
        hours => $hours,
        minutes => $mins,
    );
    $dt = $dt + $dt_dur;
}

say $dt->hms;



