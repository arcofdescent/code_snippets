#!/usr/bin/perl
use strict; use warnings;

# demonstrate array and hash slices

use Data::Dumper;

# array slice
my @animals = (qw/ dog cat monkey tiger cow deer man /);
my @array_slice = @animals[0, 2];
print Dumper \@array_slice;

# hash slice
my %months = (
    1   => 'Jan',
    2   => 'Feb',
    3   => 'Mar',
    4   => 'Apr',
);
my @some_months = @months{1, 4};
print Dumper \@some_months;

# hashref slice
my $days_ref = {
    1   => 'Mon',
    2   => 'Tue',
    3   => 'Wed',
    4   => 'Thu',
};
my @some_days = @$days_ref{1, 4};
print Dumper \@some_days;

