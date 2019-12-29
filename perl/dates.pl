#!/usr/bin/perl
use strict; use warnings;

# Keywords: date, unixdate, parsedate, Date::Manip

use Data::Dumper;
use Date::Manip;
use Perl6::Say;

# ParseDate wants "mm/dd/yyyy"
my $date = '05/16/07';
my $dt = ParseDate($date);
say UnixDate($dt, "%c");

my $start_date = '05/11/07';
my $start_dt = ParseDate($start_date);
say Date_Cmp($start_dt, $dt);

my $end_date = '05/17/07';
my $end_dt = ParseDate($end_date);
say Date_Cmp($dt, $end_dt);

if ( (Date_Cmp($start_dt, $dt) <= 0) and
     (Date_Cmp($dt, $end_dt) <= 0))
{
    say "date is between";
}

$date = '2007-01-31';
$dt = ParseDate($date);
say UnixDate($dt, "%Y %m %d");

# set date
my $dt2 = ParseDate("today");
$dt2 = Date_SetDateField($dt2, 'd', 1);
say UnixDate($dt2, "%c");

my $dt3 = ParseDate("01/01/70 00:00:00");
say UnixDate($dt3, "%c");
my $dt4 = DateCalc($dt3, "+10866 seconds");
say UnixDate($dt4, "%c");
my $delta = DateCalc($dt3, $dt4);
my ($fuck, $str) = Delta_Format($delta, undef, 1, "%dv days %hv hours, %mv mins");
say $str;



