#!/usr/bin/perl
use strict; use warnings;

use Test::More qw/ no_plan /;
use Date::Calc qw/ Days_in_Month Date_to_Days /;

### INTERNAL UTILITY ##################################################
# Usage      : $num_days = _get_num_active_days($month, $year, $start_dt, $end_dt);
# Purpose    : get active days for the month from the given range
# Returns    : ????
# Parameters : ????
# Throws     : no exceptions
# Comments   : none
# See Also   : n/a
#######################################################################
sub _get_num_active_days
{
    my ($month, $year, $start_dt, $end_dt) = @_;

    my $ret = 0;

    #print $start_dt =~ /^(\d{4})-(\d{2})-(\d{2})/;
    my $lower = Date_to_Days($start_dt =~ /^(\d{4})-(\d{2})-(\d{2})/);
    my $upper = Date_to_Days($end_dt =~ /^(\d{4})-(\d{2})-(\d{2})/);

    # loop over days of month
    for (1 .. Days_in_Month($year, $month)) {
        my $date = Date_to_Days($year, $month, $_);
        if (($date >= $lower) && ($date < $upper)) {
            $ret++;
        }
    }

    return $ret;
}

my $days1 = _get_num_active_days(7, 2006, '2006-07-20 00:00:00', '2006-08-20 00:00:00');
ok ($days1 == 12);

my $days2 = _get_num_active_days(7, 2006, '2006-06-20 00:00:00', '2006-07-20 00:00:00');
ok ($days2 == 19);

my $days3 = _get_num_active_days(7, 2006, '2006-05-20 00:00:00', '2006-09-20 00:00:00');
ok ($days3 == 31);

my $days4 = _get_num_active_days(7, 2006, '2006-06-01 00:00:00', '2006-07-01 00:00:00');
ok ($days4 == 0);

my $days5 = _get_num_active_days(7, 2006, '2006-07-31 00:00:00', '2006-08-31 00:00:00');
ok ($days5 == 1);

my $days6 = _get_num_active_days(7, 2006, '2006-07-31', '2006-08-31');
ok ($days6 == 1);

