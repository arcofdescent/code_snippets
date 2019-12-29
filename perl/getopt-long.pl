#!/usr/bin/perl
use strict; use warnings;

use Getopt::Long;

# example usage:
# ./getopt-long.pl --user user_id [ --status A ] [ --v ]

my $user_id;
my $status;
my $verbose;

my $result = GetOptions(
    'user=i' => \$user_id,
    'status=s' => \$status,
    'verbose' => \$verbose,
);

if (not $result) {
    die "usage: ./getopt-long.pl --user user_id [ --status A ] [ --v ]\n";
}
        
if (not defined $user_id) {
    die "usage: ./getopt-long.pl --user user_id [ --status A ] [ --v ]\n";
}
        
